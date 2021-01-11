import 'package:flutter/material.dart';
import 'package:iot_app/screen/homepage_screen.dart';

void main() {
  runApp(IoTApp());
}

class IoTApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
