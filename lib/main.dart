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
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCard(text: 'OOP', color: Colors.blue[100]!),
              CustomCard(text: 'DART', color: Colors.amberAccent),
              CustomCard(
                text: 'FLUTTER', 
                gradient: LinearGradient(
                  colors: [Colors.blue[300]!, Colors.blue[900]!],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}


class CustomCard extends StatelessWidget {
  final String text;
  final Color color;
  final Gradient? gradient;

  const CustomCard({
    super.key,
    required this.text,
    this.color = Colors.blue,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10), // vertical margin
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: gradient == null ? color : null,
        gradient: gradient,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}