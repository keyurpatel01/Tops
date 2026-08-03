/*
Create a Flutter widget called LikeButton that displays a heart icon and a number. When the
 user taps the heart, increase the number by 1 and change the icon color to red using setState.
*/

// LikeButton Widget
import 'package:flutter/material.dart';

// LikeButton Widget
class S6P1 extends StatefulWidget {
  const S6P1({super.key});

  @override
  State<S6P1> createState() => _S6P1State();
}

class _S6P1State extends State<S6P1> {
  int likeCount = 0;
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: isLiked ? Colors.red : Colors.grey,
              size: 50,
            ),
            onPressed: () {
              setState(() {
                likeCount++;
                isLiked = true;
              });
            },
          ),

          const SizedBox(height: 10),

          Text(
            "$likeCount",
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
