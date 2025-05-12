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
  double? get _kmphSpeed => _speed != null ? (_speed! * 3.6) : null;
  bool? _permissionGranted;
  final _plugin = FlutterAutomotive();

  PropertyStreamData? sub;
  StreamSubscription? streamSub;

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

  void watchSpeed() async {
    streamSub?.cancel();
    final sub = _plugin.properties.listenPerfVehicleSpeed();
    streamSub = sub.stream.listen((data) => setState(() => _speed = data));
  }

  // TODO simplify api
  // TODO unsubscribe does not work properly
  void stopWatchSpeed() {
    sub?.unsubscribe();
    streamSub?.cancel();
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
              Text('Current speed: ${_speed?.toStringAsFixed(4)} mps'),
              Text('Current speed: ${_kmphSpeed?.toStringAsFixed(4)} kmph'),
              ElevatedButton(
                onPressed: getSpeed,
                child: const Text('Get current speed'),
              ),
              Text('Permission granted: $_permissionGranted'),
              ElevatedButton(
                onPressed: getPermission,
                child: const Text('Get permission'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 32,
                children: [
                  ElevatedButton(
                    onPressed: watchSpeed,
                    child: const Text('Watch speed'),
                  ),
                  ElevatedButton(
                    onPressed: stopWatchSpeed,
                    child: const Text('Stop watch speed'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
