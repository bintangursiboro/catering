package com.example.kamar_8c.feature

import android.app.Activity
import android.os.Bundle
import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.EventChannel

class NotificationActivity : FlutterActivity() {
    companion object{
        val STREAM = "com.example.kamar_8c/stream"
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        EventChannel(flutterView, STREAM).setStreamHandler()

        finish()
    }
}