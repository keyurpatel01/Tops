/*
  Add two action icons (search and settings) to the AppBar in your Scaffold, and print a 
  message to the console when each icon is tapped.<br><br><em><strong>Hint:</strong> Use 
  the actions property of AppBar and IconButton widgets with onPressed callbacks.</em>
*/
import 'package:flutter/material.dart';

class S3P3 extends StatelessWidget {
  const S3P3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('AppBar'),
        actions: [
          IconButton(
            onPressed: () {
              print('Search');
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print('Setting');
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
