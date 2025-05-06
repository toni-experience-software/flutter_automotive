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
  double? _speed;
  bool? _permissionGranted;
  final _plugin = FlutterAutomotive();

  Future<void> getPermission() async {
    bool? granted;
    try {
      await _plugin.requestPermission(CarPermissions.PERMISSION_SPEED);
      granted = await _plugin.isPermissionGranted(CarPermissions.PERMISSION_SPEED);
    } catch(e) {
      granted = null;
      debugPrint('Error requesting permission: $e');
    }
    if (!mounted) return;
    setState(() => _permissionGranted = granted);
  }

  Future<void> getSpeed() async {
    double? speed;
    try {
      speed = await _plugin.properties.getPerfVehicleSpeed();
    } catch (e) {
      speed = null;
      debugPrint('Error getting speed: $e');
    }
    if (!mounted) return;
    setState(() => _speed = speed);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            spacing: 16,
            children: [
              Text('Current speed: $_speed'),
              ElevatedButton(
                onPressed: getSpeed,
                child: const Text('Get current speed'),
              ),
              Text('Permission granted: $_permissionGranted'),
              ElevatedButton(
                onPressed: getPermission,
                child: const Text('Get permission'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
