import 'package:flutter/material.dart';
import 'package:flutter_application_1/CS1P1.dart';
import 'package:flutter_application_1/CS1P2.dart';
import 'package:flutter_application_1/CS1P3.dart';
import 'package:flutter_application_1/CS1P4.dart';
import 'package:flutter_application_1/CS1P5.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Cs1p5());
  }
}
