/*
  Open any existing Flutter project in your IDE, locate the lib/main.dart file, and
   identify the MaterialApp, Scaffold, and at least two child widgets used on the main screen.

*/
import 'package:flutter/material.dart';

class S1P1 extends StatelessWidget {
  const S1P1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // Scaffold
        appBar: AppBar(
          title: const Text('My App'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello Flutter'),
              ElevatedButton(onPressed: () {}, child: const Text('Click Me')),
            ],
          ),
        ),
      ),
    );
  }
}
