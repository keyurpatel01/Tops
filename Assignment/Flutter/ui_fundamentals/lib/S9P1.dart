/*
  Create a reusable Flutter widget called PlaylistCard that displays a playlist cover image, 
  playlist name, and number of songs, similar to Spotify's playlist cards. Use this widget to 
  show three different playlists in a Column inside playlist_screen.dart.

*/
import 'package:flutter/material.dart';

class PlaylistCard extends StatelessWidget {
  final String image;
  final String playlistName;
  final String songCount;

  const PlaylistCard({
    super.key,
    required this.image,
    required this.playlistName,
    required this.songCount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),

      elevation: 5,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

      child: Padding(
        padding: const EdgeInsets.all(12),

        child: Row(
          children: [
            // Playlist Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),

              child: Image.asset(
                image,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 15),

            // Playlist Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    playlistName,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    songCount,
                    style: const TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
            ),

            const Icon(Icons.play_circle_fill, color: Colors.green, size: 40),
          ],
        ),
      ),
    );
  }
}

class S9P1 extends StatelessWidget {
  const S9P1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Playlists")),

      body: Column(
        children: const [
          PlaylistCard(
            image: "assets/images/p1.png",
            playlistName: "Workout Mix",
            songCount: "25 Songs",
          ),

          PlaylistCard(
            image: "assets/images/p2.png",
            playlistName: "Chill Vibes",
            songCount: "18 Songs",
          ),

          PlaylistCard(
            image: "assets/images/p1.png",
            playlistName: "Top Hits",
            songCount: "40 Songs",
          ),
        ],
      ),
    );
  }
}
