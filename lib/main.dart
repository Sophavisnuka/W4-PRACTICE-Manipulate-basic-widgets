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
        home: Container(
          color: Colors.white,
          child: Container(
            margin: EdgeInsets.all(50),
            color: Colors.blue,
            child: Container(
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 17, 255),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  'CADT Students', style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
