import 'package:flutter/material.dart';

import 'package:flutter_assignment/S7P4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: S7P4());
  }
}
