/*
Modify the order of two widgets inside a Column (for example, swap the position of a Text and an ElevatedButton) and describe how the
 visual layout changes on the screen.
*/
import 'package:flutter/material.dart';

class S1P3 extends StatelessWidget {
  const S1P3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text('Welcome to InstaProfile!', style: TextStyle(fontSize: 22)),
      //       SizedBox(height: 20),
      //       ElevatedButton(onPressed: () {}, child: Text('Follow')),
      //     ],
      //   ),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Follow')),
            SizedBox(height: 20),
            Text('Welcome to InstaProfile!', style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}
