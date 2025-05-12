Interact with the Android Automotive APIs using Flutter.

This plugin provides getters and, if available, setters for every standard Android Automotive `VehicleProperty`.

> This plugin is still in development, use with caution as the API might change in upcoming versions.

## Features

Use this plugin in your Android Automotive App to:

* Read vehicle properties
* Set vehicle properties
* Subscribe to vehicle properties
* Request the required permissions

## Getting started

This plugin uses the Android Automotive Car APIs, most API requests need their respective permission to be granted.

Declare them in your `AndroidManifest.xml` like this:

```xml
<uses-permission android:name="android.car.permission.CAR_SPEED"/>
```

Some requests need special privileged permissions, these are unavailable to normal Android Automotive applications and are only available to the system apps or similar.

## Usage

A reference to the plugin can be created like this:

```dart
final _plugin = FlutterAutomotive();
```

Make sure to check for the permission or request if not granted:

```dart
final permission = CarPermissions.permissionSpeed;
if (await _plugin.isPermissionGranted(permission) == false) {
    await _plugin.requestPermission(permission);
}
```

Once the permissions is granted you can start reading/setting properties.

### Reading a property

The property methods are scoped under `properties`, you can access the getters like this:

```dart
final speed = await _plugin.properties.getPerfVehicleSpeed();
```

Some methods might need their respective area as a parameter:

```dart
final wear = await _plugin.properties.getBrakePadWearPercentage(VehicleAreaWheel.leftFront);
```

### Setting a property

The property methods are scoped under `properties`, you can access the getters like this:

```dart
await _plugin.properties.setVehicleHornEngaged(true);
```

### Accessing privileged properties

These properties are scoped under `properties.privileged`, you can access their getters/setters like their non-privileged counterparts.

```dart
await _plugin.properties.privileged.setHvacFanSpeed(VehicleAreaSeat.row1Left, 1);
```

### Listening to a property

> ⚠️ This feature is still under development and the API might change drastically

You can also listen to every property that can be read using the respective listen method.

```dart
final sub = _plugin.properties.listenPerfVehicleSpeed();
// Use this stream
final stream = sub.stream;
// Stop listening
sub.unsubscribe();
```

### Accessing properties dynamically

Properties can also be accessed using the `getProperty`, `setProperty` and `subscribeProperty` methods by providing a `VehicleProperty`.

```dart
final speed = await _plugin.getProperty(VehicleProperty.PERF_VEHICLE_SPEED);
```
