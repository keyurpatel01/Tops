/*
  Implement a Flipkart-style product card with a product name and a 'Favorite' star icon. When 
  the user taps anywhere on the card (not just the icon), toggle the star between filled (yellow)
   and outlined (grey) using onTap and setState.<br><br><em><strong>Hint:</strong> Wrap the card 
   with a GestureDetector and update a boolean isFavorite.</em>

*/
import 'package:flutter/material.dart';

class S6P3 extends StatefulWidget {
  const S6P3({super.key});

  @override
  State<S6P3> createState() => _S6P3State();
}

class _S6P3State extends State<S6P3> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flipkart Product Card")),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isFavorite = !isFavorite;
            });
          },
          child: Card(
            elevation: 5,
            margin: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Expanded(
                    child: Text(
                      "Samsung Galaxy S25",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(
                    isFavorite ? Icons.star : Icons.star_border,
                    color: isFavorite ? Colors.yellow : Colors.grey,
                    size: 35,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
