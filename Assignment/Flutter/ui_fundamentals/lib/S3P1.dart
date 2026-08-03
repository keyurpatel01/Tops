/*
  Create a new Flutter app called InstaProfile and set up the main.dart file using MaterialApp 
  with the app title 'InstaProfile' and a purple primarySwatch.
*/

import 'package:flutter/material.dart';

class S3P1 extends StatelessWidget {
  const S3P1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('InstaProfile')),
      body: Center(
        child: Text('Welcome to InstaProfile!', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
