/*
  Create a Zomato-style rating bar with 5 stars. When the user taps on any star, fill all stars 
  up to that one and update the displayed rating using setState.

*/
import 'package:flutter/material.dart';

class S6P4 extends StatefulWidget {
  const S6P4({super.key});

  @override
  State<S6P4> createState() => _S6P4State();
}

class _S6P4State extends State<S6P4> {
  int rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Zomato Rating Bar")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Rate this Restaurant",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return IconButton(
                  icon: Icon(
                    index < rating ? Icons.star : Icons.star_border,
                    color: Colors.amber,
                    size: 40,
                  ),
                  onPressed: () {
                    setState(() {
                      rating = index + 1;
                    });
                  },
                );
              }),
            ),

            const SizedBox(height: 20),

            Text(
              "Rating: $rating / 5",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
