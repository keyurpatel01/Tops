/*
  Create a new widget called UserGreeting in a separate Dart file, import it into main.dart, 
  and use it inside your Scaffold’s body to display a message 
  like 'Hello, Flutter Learner!'.
*/
import 'package:flutter/material.dart';

class S1P4 extends StatelessWidget {
  const S1P4({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Hello, Flutter Learner!',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
