import 'package:flutter/material.dart';

// Reusable Category Card Widget
class CategoryCard extends StatelessWidget {
  final String title;
  final String image;

  const CategoryCard({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          // Circular Food Image
          ClipOval(
            child: Image.network(
              image,
              height: 80,
              width: 80,
              fit: BoxFit.cover,

              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }

                return const SizedBox(
                  height: 80,
                  width: 80,
                  child: Center(child: CircularProgressIndicator()),
                );
              },

              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.image_not_supported, size: 50);
              },
            ),
          ),

          const SizedBox(height: 12),

          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

// Main Screen
class S2p5 extends StatelessWidget {
  const S2p5({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> foodCategories = [
      {
        "title": "Pizza",
        "image": "https://images.unsplash.com/photo-1513104890138-7c749659a591",
      },

      {
        "title": "Biryani",
        "image": "https://images.unsplash.com/photo-1563379926898-05f4575a45d8",
      },

      {
        "title": "Burger",
        "image": "https://images.unsplash.com/photo-1568901346375-23c9450c58cd",
      },

      {
        "title": "Desserts",
        "image": "https://images.unsplash.com/photo-1551024506-0bccd828d307",
      },

      {
        "title": "Chinese",
        "image": "https://images.unsplash.com/photo-1585032226651-759b368d7246",
      },

      {
        "title": "South Indian",
        "image": "https://images.unsplash.com/photo-1601050690597-df0568f70950",
      },
    ];

    double screenWidth = MediaQuery.of(context).size.width;

    int columns = screenWidth > 600 ? 3 : 2;

    return Scaffold(
      appBar: AppBar(title: const Text("Food Categories"), centerTitle: true),

      body: GridView.count(
        padding: const EdgeInsets.all(12),

        crossAxisCount: columns,

        crossAxisSpacing: 12,

        mainAxisSpacing: 12,

        children: foodCategories.map((category) {
          return CategoryCard(
            title: category["title"]!,
            image: category["image"]!,
          );
        }).toList(),
      ),
    );
  }
}
