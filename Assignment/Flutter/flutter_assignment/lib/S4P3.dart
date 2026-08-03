/*
  Design a Column layout for a Flipkart product card: show product image (use any placeholder), 
  product name, price, and a 'Buy Now' button stacked vertically with margin between each element.
*/
import 'package:flutter/material.dart';

class S4P3 extends StatelessWidget {
  const S4P3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 220,
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 5,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Product Image
              Image.network(
                "https://rukminim2.flixcart.com/image/480/640/xif0q/headphone/e/w/c/ux-elite-9-white-unix-original-imahgum5w77dhsaw.jpeg?q=90",
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 12),

              // Product Name
              const Text(
                "Wireless Bluetooth Headphones",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              // Product Price
              const Text(
                "₹1,999",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 15),

              // Buy Now Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Buy Now"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
