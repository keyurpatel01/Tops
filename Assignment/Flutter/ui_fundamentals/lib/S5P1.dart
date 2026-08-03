/*
  Create a Flutter screen called SongInfoScreen that displays the title and artist of a song 
  using two styled Text widgets with different font sizes and colors.
*/
import 'package:flutter/material.dart';

class S5P1 extends StatelessWidget {
  const S5P1({super.key});

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
          children: const [
            // Song Title
            Text(
              "Blinding Lights",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 10),

            // Artist Name
            Text(
              "The Weeknd",
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}