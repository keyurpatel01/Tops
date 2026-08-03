import 'package:flutter/material.dart';

class S4p1 extends StatelessWidget {
  const S4p1({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> foodItems = [
      "Pizza",
      "Burger",
      "Dosa",
      "Biryani",
      "Pasta",
      "Sandwich",
      "Chinese Noodles",
      "Paneer Tikka",
      "Ice Cream",
      "Momos",
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Food Menu"), centerTitle: true),

      body: ListView(
        padding: const EdgeInsets.all(12),

        children: foodItems.map((food) {
          return InkWell(
            onTap: () {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text("$food selected")));
            },

            child: Card(
              elevation: 4,

              margin: const EdgeInsets.only(bottom: 12),

              child: Padding(
                padding: const EdgeInsets.all(16),

                child: Row(
                  children: [
                    const Icon(Icons.restaurant, size: 30),

                    const SizedBox(width: 15),

                    Text(
                      food,

                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
