import 'package:flutter/material.dart';
import 'package:flutter_application_1/CS1P4.dart';

class ServiceListItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const ServiceListItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue.shade100,
          child: Icon(icon, color: Colors.blue),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}

class CategoryGridItem extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onTap;

  const CategoryGridItem({
    super.key,
    required this.image,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
                child: Image.network(
                  image,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Cs1p5 extends StatelessWidget {
  const Cs1p5({super.key});

  @override
  Widget build(BuildContext context) {
    final services = [
      {
        "name": "Food Delivery",
        "icon": Icons.fastfood,
        "description": "Order delicious food online.",
      },
      {
        "name": "Movie Tickets",
        "icon": Icons.movie,
        "description": "Book movie tickets instantly.",
      },
      {
        "name": "Mobile Recharge",
        "icon": Icons.phone_android,
        "description": "Recharge your mobile number.",
      },
      {
        "name": "Train Booking",
        "icon": Icons.train,
        "description": "Book train tickets online.",
      },
      {
        "name": "IPL Fantasy",
        "icon": Icons.sports_cricket,
        "description": "Play fantasy cricket.",
      },
    ];

    return Scaffold(
      body: ListView.builder(
        itemCount: services.length,
        itemBuilder: (context, index) {
          return ServiceListItem(
            icon: services[index]["icon"] as IconData,
            title: services[index]["name"] as String,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailsScreen(
                    title: services[index]["name"] as String,
                    description: services[index]["description"] as String,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {
        "title": "Food",
        "image":
            "https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=400",
        "description": "Discover popular restaurants.",
      },
      {
        "title": "Travel",
        "image":
            "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=400",
        "description": "Book flights and hotels.",
      },
      {
        "title": "Shopping",
        "image":
            "https://images.unsplash.com/photo-1483985988355-763728e1935b?w=400",
        "description": "Shop for your favorite brands.",
      },
      {
        "title": "Entertainment",
        "image":
            "https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?w=400",
        "description": "Movies, music and events.",
      },
      {
        "title": "Payments",
        "image":
            "https://images.unsplash.com/photo-1556740749-887f6717d7e4?w=400",
        "description": "Pay bills securely.",
      },
      {
        "title": "Sports",
        "image":
            "https://images.unsplash.com/photo-1540747913346-19e32dc3e97e?w=400",
        "description": "Live sports and fantasy games.",
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return CategoryGridItem(
            image: categories[index]["image"]!,
            title: categories[index]["title"]!,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailsScreen(
                    title: categories[index]["title"]!,
                    description: categories[index]["description"]!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
