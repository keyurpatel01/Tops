/*
  Refactor a layout that uses fixed height and width for a Flipkart-style product grid to use
   Flexible and Expanded widgets instead, so the grid adapts smoothly on both mobile and tablet 
   screens.<br><br><em><strong>Hint:</strong> Replace hardcoded dimensions with Flexible/Expanded 
   and MediaQuery where needed.</em>

*/
import 'package:flutter/material.dart';

class S7P3 extends StatelessWidget {
  const S7P3({super.key});

  Widget productCard(String name, String price) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // Image area takes available vertical space
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.grey.shade300,
                child: const Icon(
                  Icons.shopping_bag,
                  size: 60,
                  color: Colors.blue,
                ),
              ),
            ),

            const SizedBox(height: 10),

            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 5),

            Text(
              price,
              style: const TextStyle(color: Colors.green, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: const Text("Flipkart Product Grid")),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: screenHeight * 0.35,
                      child: productCard("Samsung Phone", "₹24,999"),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: SizedBox(
                      height: screenHeight * 0.35,
                      child: productCard("Bluetooth Speaker", "₹1,999"),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: screenHeight * 0.35,
                      child: productCard("Smart Watch", "₹3,499"),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: SizedBox(
                      height: screenHeight * 0.35,
                      child: productCard("Headphones", "₹2,499"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
