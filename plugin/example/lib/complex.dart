import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_automotive/flutter_automotive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _plugin = FlutterAutomotive();

  final Map<VehicleProperty, dynamic> _propertyValues = {};
  final Map<CarPermissions, bool> _permissionStatus = {};
  bool _allGranted = false;

  @override
  void initState() {
    super.initState();
    checkAllPermissions();
    listenToAllProperties();
  }

  Future<void> getProperty(VehicleProperty prop) async {
    try {
      final value = await _plugin.getProperty(prop);
      setState(() => _propertyValues[prop] = value);
    } catch (e) {
      debugPrint('Error getting property $prop: $e');
    }
  }

  List<CarPermissions> getNormalPermissions(VehicleProperty prop) => [
    for (final permission in prop.readPermissions)
      if (permission.privileged == false) permission,
  ];

  Future<void> getPermission(VehicleProperty prop) async {
    try {
      final normalPermissions = getNormalPermissions(prop);
      for (final permission in normalPermissions) {
        await _plugin.requestPermission(permission);
        final granted = await _plugin.isPermissionGranted(permission);
        setState(() => _permissionStatus[permission] = granted);
      }
    } catch (e) {
      debugPrint('Error requesting permission: $e');
    }
  }

  bool allPermissionsGranted(VehicleProperty prop) {
    final normalPermissions = getNormalPermissions(prop);
    for (final permission in normalPermissions) {
      if (_permissionStatus[permission] != true) {
        return false;
      }
    }
    return true;
  }

  Future<void> requestAllPermissions() async {
    final permissions = {
      for (final prop in VehicleProperty.values)
        for (final perm in prop.readPermissions)
          if (perm.privileged == false) perm,
    };
    for (final permission in permissions) {
      if (_permissionStatus[permission] == true) {
        continue;
      } else {
        await _plugin.requestPermission(permission);
      }
    }
    checkAllPermissions();
  }

  Future<void> checkAllPermissions() async {
    final permissions = {
      for (final prop in VehicleProperty.values)
        for (final perm in prop.readPermissions)
          if (perm.privileged == false) perm,
    };
    bool all = true;
    for (final permission in permissions) {
      final granted = await _plugin.isPermissionGranted(permission);
      setState(() => _permissionStatus[permission] = granted);
      all = all && granted;
    }
    setState(() => _allGranted = all);
  }

  Future<void> listenToAllProperties() async {
    final normalProps = [
      for (final prop in VehicleProperty.values)
        if (prop.readPermissions.any((e) => e.privileged == false)) prop,
    ];
    try {
      for (final prop in normalProps) {
        if (true) {
          _plugin.listenProperty(
            prop.id,
            0,
            (v) => setState(() => _propertyValues[prop] = v),
          );
        }
      }
    } catch (e) {
      debugPrint('Error listening to all properties: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final normalProps = [
      for (final prop in VehicleProperty.values)
        if (prop.readPermissions.any((e) => e.privileged == false)) prop,
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('flutter_automotive example app'),
          actions: [
            TextButton(
              onPressed: requestAllPermissions,
              child: Text(switch (_allGranted) {
                true => "All granted",
                false => "Request Permissions",
              }),
            ),
          ],
        ),
        body: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 2,
          children: [
            for (final prop in normalProps)
              VehiclePropertyCard(
                prop: prop,
                value: _propertyValues[prop],
                permissions: getNormalPermissions(prop),
                onTap: () async {
                  if (allPermissionsGranted(prop)) {
                    await getProperty(prop);
                  }
                },
              ),
          ],
        ),
      ),
    );
  }
}

class VehiclePropertyCard extends StatelessWidget {
  const VehiclePropertyCard({
    super.key,
    required this.prop,
    required this.value,
    required this.permissions,
    required this.onTap,
  });

  final VehicleProperty prop;
  final dynamic value;
  final List<CarPermissions> permissions;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 16,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          prop.name,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Text(
                          "#${prop.id}",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  Chip(
                    label: Text(value?.toString() ?? "N/A"),
                    backgroundColor: switch (value) {
                      null => Colors.red,
                      _ => null,
                    },
                  ),
                ],
              ),
              if (permissions.isNotEmpty) ...[
                Text(
                  "Permissions: ${permissions.map((e) => e.name).join(", ")}",
                ),
              ],
              if (prop.flags.isNotEmpty) ...[
                Text("Flags: ${prop.flags.join(", ")}"),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
