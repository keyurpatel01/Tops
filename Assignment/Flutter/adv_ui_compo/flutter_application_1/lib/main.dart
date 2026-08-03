import 'package:flutter/material.dart';
import 'package:flutter_application_1/S1P1.dart';
import 'package:flutter_application_1/S1P2.dart';
import 'package:flutter_application_1/S1P3.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: S1p3());
  }
}
