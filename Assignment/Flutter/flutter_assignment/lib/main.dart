import 'package:flutter/material.dart';
import 'package:flutter_assignment/S5P5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: S5P5());
  }
}
