package com.example.kamar_8c

import android.app.Activity
import android.content.Intent
import android.os.Bundle
import com.example.kamar_8c.channels.FLutterLocalNotification
import io.flutter.Log

import io.flutter.app.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
  private lateinit var flutterLocalNotification : FLutterLocalNotification

  private fun init(){
    flutterLocalNotification = FLutterLocalNotification(flutterView,this)
    flutterLocalNotification.setMethodCallHandler()
  }
  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    GeneratedPluginRegistrant.registerWith(this)
    init()
  }

  override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
    super.onActivityResult(requestCode, resultCode, data)
    if (requestCode == 100){
      if (resultCode == Activity.RESULT_OK){
        Log.d("Sent","Activity ggwp" )
      }
    }
  }
}
