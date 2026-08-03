import 'package:flutter/material.dart';

class S8p5 extends StatelessWidget {
  const S8p5({super.key});

  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      appBar: AppBar(
        title: const Text("Trending Restaurants"),
        centerTitle: true,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(12),
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.9,
        children: restaurants.map((restaurant) {
          return InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("You selected ${restaurant["name"]}")),
              );
            },
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.orange,
                      child: Icon(
                        Icons.restaurant,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),

                    const SizedBox(height: 12),

                    Text(
                      restaurant["name"],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      restaurant["cuisine"],
                      style: const TextStyle(color: Colors.grey, fontSize: 15),
                    ),

                    const SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.star, color: Colors.green, size: 18),
                        const SizedBox(width: 4),
                        Text(
                          restaurant["rating"],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
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
