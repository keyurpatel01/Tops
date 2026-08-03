/*
  Refactor a screen that lists restaurants (using dummy data) so that each restaurant is 
  displayed using a custom RestaurantCard widget. The RestaurantCard should accept restaurant 
  name, cuisine, and rating as parameters and be reused for each item in the list.<br><br><em><
  strong>Hint:</strong> Pass the restaurant details as constructor arguments to RestaurantCard 
  and use ListView.builder to display multiple cards.</em>

*/
import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  final String restaurantName;
  final String cuisine;
  final double rating;

  const RestaurantCard({
    super.key,
    required this.restaurantName,
    required this.cuisine,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 5,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

      child: Padding(
        padding: const EdgeInsets.all(15),

        child: Row(
          children: [
            // Restaurant Image
            Container(
              height: 70,
              width: 70,

              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),

              child: const Icon(Icons.restaurant, size: 40, color: Colors.red),
            ),

            const SizedBox(width: 15),

            // Restaurant Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    restaurantName,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    cuisine,
                    style: const TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
            ),

            // Rating
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),

              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(8),
              ),

              child: Row(
                children: [
                  Text(
                    rating.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const Icon(Icons.star, color: Colors.white, size: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class S9P2 extends StatelessWidget {
  const S9P2({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> restaurants = [
      {
        "name": "Spice Garden",
        "cuisine": "North Indian, Chinese",
        "rating": 4.5,
      },

      {"name": "Pizza Hub", "cuisine": "Italian, Fast Food", "rating": 4.2},

      {"name": "Burger Point", "cuisine": "Burgers, Beverages", "rating": 4.7},

      {
        "name": "Food Corner",
        "cuisine": "Gujarati, South Indian",
        "rating": 4.3,
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Restaurants")),

      body: ListView.builder(
        itemCount: restaurants.length,

        itemBuilder: (context, index) {
          return RestaurantCard(
            restaurantName: restaurants[index]["name"],

            cuisine: restaurants[index]["cuisine"],

            rating: restaurants[index]["rating"],
          );
        },
      ),
    );
  }
}
