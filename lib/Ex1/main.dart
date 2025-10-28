import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        title: 'My app',

        home: Scaffold(
          body: Center(
            child: Text(
              'Hello My name is Ronan!',
              style: TextStyle(
                fontSize: 50,
                color: Colors.orange
              ),
            ),
          ),
        )
      ),
    ),
  );
}