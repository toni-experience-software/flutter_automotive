package com.wearetoni.flutter_automotive

import android.car.Car
import android.car.hardware.CarPropertyValue.STATUS_AVAILABLE
import android.car.hardware.property.CarPropertyManager
import io.flutter.embedding.engine.plugins.FlutterPlugin

/** FlutterAutomotivePlugin */
class FlutterAutomotivePlugin: FlutterPlugin, FlutterAutomotiveApi {
  private lateinit var propertyManager: CarPropertyManager;

  // --- Setup ---

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    FlutterAutomotiveApi.setUp(flutterPluginBinding.binaryMessenger, this)
    val car = Car.createCar(flutterPluginBinding.applicationContext)
    propertyManager = car.getCarManager(Car.PROPERTY_SERVICE) as CarPropertyManager
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    FlutterAutomotiveApi.setUp(binding.binaryMessenger, null)
  }

  // --- Methods ---

  override fun getProperty(
    propertyId: Long,
    areaId: Long,
    callback: (kotlin.Result<Any?>) -> Unit
  ) {
    val prop = propertyManager.getProperty<Any>(propertyId.toInt(), areaId.toInt())
    if (prop.propertyStatus == STATUS_AVAILABLE) {
      callback(Result.success(prop.value));
    } else {
      callback(Result.failure(Exception("Property not available")))
    }
  }

  override fun setProperty(
    propertyId: Long,
    areaId: Long,
    value: Any?,
    callback: (kotlin.Result<Unit>) -> Unit
  ) {
    // TODO test if the class property works
    propertyManager.setProperty(value?.javaClass, propertyId.toInt(), areaId.toInt(), value)
    callback(Result.success(Unit))
  }
}
