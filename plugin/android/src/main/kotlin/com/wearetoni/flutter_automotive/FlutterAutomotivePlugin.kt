package com.wearetoni.flutter_automotive

import android.app.Activity
import android.car.Car
import android.car.hardware.CarPropertyValue
import android.car.hardware.property.CarPropertyManager
import android.content.pm.PackageManager
import androidx.core.app.ActivityCompat
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding

/** FlutterAutomotivePlugin */
class FlutterAutomotivePlugin: FlutterPlugin, ActivityAware, FlutterAutomotiveApi {
  private var activity: Activity? = null
  private lateinit var propertyManager: CarPropertyManager
  private lateinit var eventListener: PropertyUpdateEventHandler

  private val eventCallbacks: MutableMap<Pair<Long, Long>, CarPropertyManager.CarPropertyEventCallback> = mutableMapOf()

  // --- Setup ---

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    FlutterAutomotiveApi.setUp(flutterPluginBinding.binaryMessenger, this)
    eventListener = PropertyUpdateEventHandler()
    ReceiveEventsStreamHandler.register(flutterPluginBinding.binaryMessenger, eventListener)
    val car = Car.createCar(flutterPluginBinding.applicationContext)
    propertyManager = car.getCarManager(Car.PROPERTY_SERVICE) as CarPropertyManager
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    FlutterAutomotiveApi.setUp(binding.binaryMessenger, null)
  }

  // --- Activity Setup ---

  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    activity = binding.activity
  }

  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
    activity = binding.activity
  }

  override fun onDetachedFromActivityForConfigChanges() {
    activity = null
  }

  override fun onDetachedFromActivity() {
    activity = null
  }

  // --- Methods ---

  override fun getProperty(
    propertyId: Long,
    areaId: Long,
    callback: (kotlin.Result<Any?>) -> Unit
  ) {
    val prop = propertyManager.getProperty<Any>(propertyId.toInt(), areaId.toInt())
    callback(Result.success(prop.value));
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

  override fun subscribeProperty(propertyId: Long, areaId: Long, updateRate: Double) {
    val callback = object : CarPropertyManager.CarPropertyEventCallback {
      override fun onChangeEvent(carPropertyValue: CarPropertyValue<*>) {
        try {
          if (carPropertyValue.areaId == areaId.toInt()) {
            eventListener.sendEvent(propertyId, areaId, carPropertyValue.value)
          }
        } catch (e: Exception) {
          // TODO log error
        }
      }

      override fun onErrorEvent(p0: Int, p1: Int) {
        // TODO implement
      }
    }
    eventCallbacks[Pair(propertyId, areaId)] = callback
    propertyManager.registerCallback(callback, propertyId.toInt(), updateRate.toFloat())
    // This would be preferred, but it does not work
    // propertyManager.subscribePropertyEvents(propertyId.toInt(), areaId.toInt(), callback)
  }

  override fun unsubscribeProperty(propertyId: Long, areaId: Long) {
    val callback = eventCallbacks[Pair(propertyId, areaId)]
    if (callback != null) {
      propertyManager.unregisterCallback(callback)
      // This would be preferred, but it does not work
      // propertyManager.unsubscribePropertyEvents(callback)
    }
  }

  // Permissions
  private fun isPermissionGranted(activity: Activity, permission: String): Boolean {
    val status = ActivityCompat.checkSelfPermission(activity.applicationContext, permission)
    return status == PackageManager.PERMISSION_GRANTED
  }

  override fun arePermissionsGranted(permissions: List<String>): Boolean {
    return activity?.let { act -> permissions.all { isPermissionGranted(act, it) } } ?: false
  }

  override fun requestPermissions(permissions: List<String>) {
    activity?.let { act ->
      ActivityCompat.requestPermissions(act, permissions.toTypedArray(), 0)
    }
  }
}
