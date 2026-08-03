/*
  Place a FloatingActionButton at the bottom right of the screen that shows a plus (+) icon,
   and when tapped, displays a SnackBar with the message 'Add new post!'.
*/
import 'package:flutter/material.dart';

class S3P4 extends StatelessWidget {
  const S3P4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Insagram')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Add New Post!')));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
