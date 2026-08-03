import 'package:flutter/material.dart';
import 'package:ui_fundamentals/S9P4.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: S9P4());
  }
}
