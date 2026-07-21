/*
  Inside InstaProfile, use a Scaffold widget to create a home screen with an AppBar titled 
  'My Profile' and a background color matching Instagram's gradient (use a solid purple or deep 
  orange as a close match).
*/

import 'package:flutter/material.dart';

class S3P2 extends StatelessWidget {
  const S3P2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple, // Instagram-like background
      appBar: AppBar(
        title: const Text('My Profile', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: const Center(
        child: Text(
          'Welcome to InstaProfile!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
