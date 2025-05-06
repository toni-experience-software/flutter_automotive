package com.wearetoni.flutter_automotive

class PropertyUpdateEventHandler : ReceiveEventsStreamHandler() {
    private var eventSink: PigeonEventSink<PropertyUpdateEvent>? = null

    override fun onListen(p0: Any?, sink: PigeonEventSink<PropertyUpdateEvent>) {
        eventSink = sink
    }

    fun sendEvent(propertyId: Long, areaId: Long, value: Any) {
        val event = PropertyUpdateEvent(value, propertyId, areaId)
        eventSink?.success(event)
    }

    fun onEventsDone() {
        eventSink?.endOfStream()
        eventSink = null
    }
}