/*
  Identify and fix the issue in this code: a WhatsApp-style chat bubble is overflowing on small 
  screens because its width is set to 400. Update it to use MediaQuery so the bubble never 
  exceeds 80% of the screen width.<br><br><em><strong>Constraint:</strong> Do not use any fixed 
  pixel values for width.</em>

*/
import 'package:flutter/material.dart';

class S7P4 extends StatelessWidget {
  const S7P4({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text("WhatsApp Chat")),
      body: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: screenWidth * 0.8, // 80% of screen width
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.green.shade200,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Text(
            "Hello! This is a WhatsApp style chat bubble that adapts to any screen size.",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
