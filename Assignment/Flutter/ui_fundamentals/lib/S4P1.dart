/*
  Create a Flutter screen called MySimpleRow where you use a Row widget to display 
  three icons (favorite, share, comment) spaced evenly across the screen.
*/
import 'package:flutter/material.dart';

class S4P1 extends StatelessWidget {
  const S4P1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Row'), backgroundColor: Colors.green),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.favorite, size: 30),
            Icon(Icons.share, size: 30),
            Icon(Icons.comment, size: 30),
          ],
        ),
      ),
    );
  }
}
