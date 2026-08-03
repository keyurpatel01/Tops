/*

Replace a Text widget inside a Column with an Icon widget (for example, 
use Icons.favorite) and run the app to observe how the UI updates instantly.<br><br><em>
<strong>Hint:</strong> Hot reload will help you see the change without restarting the app.</em>
*/

import 'package:flutter/material.dart';

class S1P2 extends StatelessWidget {
  const S1P2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Center(
      //       child: Text(
      //         'Welcome to InstaProfile!',
      //         style: TextStyle(fontSize: 22, color: Colors.black),
      //       ),
      //     ),
      //   ],
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Icon(Icons.favorite, color: Colors.red, size: 80)],
        ),
      ),
    );
  }
}
