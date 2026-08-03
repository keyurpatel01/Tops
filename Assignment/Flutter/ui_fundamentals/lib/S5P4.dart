/*
  Add an Image widget that loads and displays your favorite artist's photo from the internet 
  (use any valid image URL) below the heart icon.

*/
import 'package:flutter/material.dart';

class S5P4 extends StatelessWidget {
  const S5P4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Song Info"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Song Title
              const Text(
                "Blinding Lights",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 10),

              // Artist Name
              const Text(
                "The Weeknd",
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 20),

              // Play Now Button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 12,
                  ),
                ),
                child: const Text(
                  "Play Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Heart Icon
              const Icon(Icons.favorite, color: Colors.red, size: 40),

              const SizedBox(height: 20),

              // Artist Image
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPB6vNplsjmgBUTe-P-tv8bZVLu1KIhcFOGl1ZE5N5X5nutN0w59Fw-Ffq&s=10",
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
