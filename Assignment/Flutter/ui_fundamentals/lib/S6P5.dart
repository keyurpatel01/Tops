/*
  Refactor your code from any of the above tasks to extract the setState logic into a separate 
  method (e.g., updateVote or toggleFavorite), and call this method from the appropriate callback.
  <br><br><em><strong>Constraint:</strong> The setState call should only appear inside your new 
  method, not directly in the onPressed/onTap callback.</em>

*/
import 'package:flutter/material.dart';

class S6P5 extends StatefulWidget {
  const S6P5({super.key});

  @override
  State<S6P5> createState() => _S6P5State();
}

class _S6P5State extends State<S6P5> {
  bool isFavorite = false;

  // Method containing the only setState() call
  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flipkart Product Card")),
      body: Center(
        child: GestureDetector(
          onTap: toggleFavorite,
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
