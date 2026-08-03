import 'package:flutter/material.dart';

class S8p1 extends StatelessWidget {
  const S8p1({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> restaurants = [
      {"name": "Pizza Hub", "cuisine": "Italian", "rating": 4.8},
      {"name": "Spice Villa", "cuisine": "North Indian", "rating": 4.6},
      {"name": "Burger Point", "cuisine": "Fast Food", "rating": 4.5},
      {"name": "Chinese Wok", "cuisine": "Chinese", "rating": 4.4},
      {"name": "South Express", "cuisine": "South Indian", "rating": 4.7},
      {"name": "Biryani House", "cuisine": "Biryani", "rating": 4.9},
      {"name": "Dessert Corner", "cuisine": "Desserts", "rating": 4.3},
      {"name": "Healthy Bowl", "cuisine": "Healthy Food", "rating": 4.6},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Trending Restaurants"),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          final restaurant = restaurants[index];

          return Card(
            elevation: 4,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.orange,
                child: Icon(Icons.restaurant, color: Colors.white),
              ),
              title: Text(
                restaurant["name"],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text("Cuisine: ${restaurant["cuisine"]}"),
              trailing: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.star, color: Colors.white, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      restaurant["rating"].toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
