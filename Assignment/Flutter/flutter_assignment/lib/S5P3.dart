/*
Display a heart Icon (Icons.favorite) below the button on SongInfoScreen, set its color to red, 
and increase its size to 40.
*/
import 'package:flutter/material.dart';

class S5P3 extends StatelessWidget {
  const S5P3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Song Info"),
        backgroundColor: Colors.green,
      ),
      body: Center(
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

            // Favorite Icon
            const Icon(
              Icons.favorite,
              color: Colors.red,
              size: 40,
            ),
          ],
        ),
      ),
    );
  }
}