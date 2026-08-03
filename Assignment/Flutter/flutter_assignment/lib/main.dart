import 'package:flutter/material.dart';
import 'package:flutter_assignment/S6P1.dart';
import 'package:flutter_assignment/S6P2.dart';
import 'package:flutter_assignment/S6P3.dart';
import 'package:flutter_assignment/S6P4.dart';
import 'package:flutter_assignment/S6P5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: S6P5());
  }
}
