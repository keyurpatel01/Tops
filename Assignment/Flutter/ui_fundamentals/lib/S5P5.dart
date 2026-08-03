/*
Add an asset image (such as a logo or album cover) to your project and display it at the top of 
SongInfoScreen using Image.asset().<br><br><em><strong>Hint:</strong> Update pubspec.yaml to 
include your asset, and place the image inside the assets/ folder.</em>
*/
import 'package:flutter/material.dart';

class S5P5 extends StatelessWidget {
  const S5P5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Song Info"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                // Asset Image
                Image.asset(
                  "assets/images/ar.png",
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),

                const SizedBox(height: 20),

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
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                ),

                const SizedBox(height: 25),

                // Play Button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 15,
                    ),
                  ),
                  child: const Text(
                    "Play Now",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),

                const SizedBox(height: 20),

                // Heart Icon
                const Icon(Icons.favorite, color: Colors.red, size: 40),

                const SizedBox(height: 20),

                // Network Image
              ],
            ),
          ),
        ),
      ),
    );
  }
}
