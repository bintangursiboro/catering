package com.example.kamar_8c.channels

import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import com.example.kamar_8c.feature.NotificationActivity
import com.example.kamar_8c.helper.Helper
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.view.FlutterView

class FLutterLocalNotification(private val flutterView: FlutterView,private val context: Context) {
    companion object{
        const val CHANNEL = "com.example.kamar_8c/notification"
        const val SHOW_NOTIFICATION_METHOD = "showNotification"
        const val TITLE = "title"
        const val BODY = "body"
    }

    fun setMethodCallHandler(){
        MethodChannel(flutterView, CHANNEL).setMethodCallHandler { methodCall, result ->
            when(methodCall.method){
                SHOW_NOTIFICATION_METHOD -> showNotification(methodCall, result)
                else -> result.notImplemented()
            }
        }
    }

    private fun showNotification(methodCall: MethodCall, result : MethodChannel.Result){
        methodCall.argument<String>(TITLE)?.let {title ->
            methodCall.argument<String>(BODY)?.let { body ->
                val intent = Intent(context,NotificationActivity::class.java)
                val pendingIntent = PendingIntent.getActivity(context,100, intent,PendingIntent.FLAG_UPDATE_CURRENT)
                Helper.showNotification(context,title,body,pendingIntent ,15)
                result.success("success")
            }
        }
    }

}