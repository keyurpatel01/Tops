import 'package:flutter/material.dart';

class S2p3 extends StatelessWidget {
  const S2p3({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> foodCategories = [
      {"title": "Pizza", "icon": Icons.local_pizza},
      {"title": "Biryani", "icon": Icons.rice_bowl},
      {"title": "Burger", "icon": Icons.fastfood},
      {"title": "Desserts", "icon": Icons.cake},
      {"title": "Chinese", "icon": Icons.ramen_dining},
      {"title": "South Indian", "icon": Icons.restaurant},
    ];

    // Responsive grid columns
    double screenWidth = MediaQuery.of(context).size.width;

    int columns = screenWidth > 600 ? 3 : 2;

    return Scaffold(
      appBar: AppBar(title: const Text("Food Categories"), centerTitle: true),

      body: GridView.count(
        padding: const EdgeInsets.all(12),

        // Responsive columns
        crossAxisCount: columns,

        // 12px spacing between cards
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,

        children: foodCategories.map((category) {
          return Card(
            elevation: 5,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Icon(category["icon"], size: 50, color: Colors.orange),

                const SizedBox(height: 12),

                Text(
                  category["title"],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
