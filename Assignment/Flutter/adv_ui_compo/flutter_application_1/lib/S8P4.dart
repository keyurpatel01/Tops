import 'package:flutter/material.dart';

class S8p4 extends StatelessWidget {
  S8p4({super.key});

  final List<Map<String, dynamic>> restaurants = [
    {"name": "Pizza Hub", "cuisine": "Italian", "rating": "4.8"},
    {"name": "Burger Point", "cuisine": "Fast Food", "rating": "4.6"},
    {"name": "Biryani House", "cuisine": "Indian", "rating": "4.9"},
    {"name": "Chinese Wok", "cuisine": "Chinese", "rating": "4.5"},
    {"name": "South Express", "cuisine": "South Indian", "rating": "4.7"},
    {"name": "Dessert Corner", "cuisine": "Desserts", "rating": "4.4"},
    {"name": "Healthy Bowl", "cuisine": "Healthy", "rating": "4.6"},
    {"name": "Spice Villa", "cuisine": "North Indian", "rating": "4.8"},
  ];

  @override
  Widget build(BuildContext context) {
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
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.star, color: Colors.green, size: 18),
                  const SizedBox(width: 4),
                  Text(restaurant["rating"]),
                ],
              ),

              // Tap Gesture
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("You selected ${restaurant["name"]}"),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
