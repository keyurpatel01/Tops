import 'package:flutter/material.dart';

class Cs1p3 extends StatelessWidget {
  const Cs1p3({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> categories = [
      {
        "title": "Food",
        "image":
            "https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=300",
      },
      {
        "title": "Travel",
        "image":
            "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=300",
      },
      {
        "title": "Shopping",
        "image":
            "https://images.unsplash.com/photo-1483985988355-763728e1935b?w=300",
      },
      {
        "title": "Entertainment",
        "image":
            "https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?w=300",
      },
      {
        "title": "Payments",
        "image":
            "https://images.unsplash.com/photo-1556740749-887f6717d7e4?w=300",
      },
      {
        "title": "Sports",
        "image":
            "https://images.unsplash.com/photo-1540747913346-19e32dc3e97e?w=300",
      },
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(15),
                      ),
                      child: Image.network(
                        categories[index]["image"]!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      categories[index]["title"]!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
