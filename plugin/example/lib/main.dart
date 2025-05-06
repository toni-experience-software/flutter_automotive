import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_automotive/flutter_automotive.dart';
import 'package:flutter_automotive_models/flutter_automotive_models.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double? _temperature;
  final _flutterAutomotivePlugin = FlutterAutomotive();

  @override
  void initState() {
    super.initState();
    getTemperature();
  }

  Future<void> getTemperature() async {
    double? temperature;
    try {
      temperature = await _flutterAutomotivePlugin.getHvacTemperatureCurrent(VehicleAreaSeat.ROW_1_LEFT);
    } on PlatformException {
      temperature = null;
    }
    if (!mounted) return;
    setState(() => _temperature = temperature,);
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
            spacing: 32,
            children: [
              Text('Current temperature: $_temperature'),
              ElevatedButton(
                onPressed: getTemperature,
                child: const Text('Get current temperature'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
