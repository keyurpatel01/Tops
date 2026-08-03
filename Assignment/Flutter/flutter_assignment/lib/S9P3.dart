/*
  Build a reusable OfferBanner widget that takes an image URL and offer text as parameters and 
  displays them together. Use this widget at the top of both a food delivery home screen and a 
  shopping deals screen to demonstrate reusability.

*/
import 'package:flutter/material.dart';

class OfferBanner extends StatelessWidget {
  final String imageUrl;
  final String offerText;

  const OfferBanner({
    super.key,
    required this.imageUrl,
    required this.offerText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),

      height: 160,

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),

      child: Stack(
        children: [
          // Banner Image
          ClipRRect(
            borderRadius: BorderRadius.circular(15),

            child: Image.network(
              imageUrl,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // Offer Text Overlay
          Container(
            alignment: Alignment.center,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black.withOpacity(0.4),
            ),

            child: Text(
              offerText,

              textAlign: TextAlign.center,

              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class S9P3 extends StatelessWidget {
  const S9P3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Food Delivery")),

      body: Column(
        children: [
          OfferBanner(
            imageUrl:
                "https://images.unsplash.com/photo-1504674900247-0877df9cc836",

            offerText: "50% OFF on Food Orders",
          ),

          const Text(
            "Popular Restaurants",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
