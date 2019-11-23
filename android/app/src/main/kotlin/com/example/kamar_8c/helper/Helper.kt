package com.example.kamar_8c.helper

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Context
import android.graphics.Color
import android.media.RingtoneManager
import android.os.Build
import androidx.core.app.NotificationCompat
import com.example.kamar_8c.R

object Helper {
    fun showNotification(context: Context, title : String, body : String, pendingIntent: PendingIntent? = null, notificationId : Int? = 1){
        val notificationManager = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        val channelId = "CateringLohot"

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            notificationManager.createNotificationChannel(
                    NotificationChannel(
                            channelId,
                            "Fazzcard Notification",
                            NotificationManager.IMPORTANCE_HIGH
                    )
                            .apply {
                                this.description = "Fazzcard notification CHANNEL"
                                enableLights(true)
                                lightColor = Color.BLUE
                                setSound(RingtoneManager.getDefaultUri(RingtoneManager.TYPE_NOTIFICATION), null)
                                lockscreenVisibility = Notification.VISIBILITY_PUBLIC
                            }
            )
        }

        val notificationBuilder = NotificationCompat.Builder(context, channelId).apply {
            setSmallIcon(R.mipmap.ic_launcher)
            setContentTitle(title)
            setContentText(body)
            setSound(RingtoneManager.getDefaultUri(RingtoneManager.TYPE_NOTIFICATION))
            setAutoCancel(true)
            setStyle(NotificationCompat.BigTextStyle()
                    .bigText(body))
        }

        pendingIntent?.let {
            notificationBuilder.setContentIntent(it) // Set onclick notification open app
        }

        notificationId?.let {
            notificationManager.notify(it, notificationBuilder.build())
        }

    }
}


