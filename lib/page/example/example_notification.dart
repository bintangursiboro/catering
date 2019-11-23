import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExampleNotification extends StatefulWidget {
  @override
  _ExampleNotificationState createState() => _ExampleNotificationState();
}

class _ExampleNotificationState extends State<ExampleNotification> {
  MethodChannel platform = MethodChannel('com.example.kamar_8c/notification');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Notification'),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: () async {
              print(await platform.invokeMethod('showNotification', {
                'title': 'Ini Notifikasi',
                'body': 'Ini badan notifikasi',
              }));
            },
          ),
        ),
      ),
    );
  }
}
