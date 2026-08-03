import 'package:flutter/material.dart';

class S3p1 extends StatelessWidget {
  const S3p1({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> playlists = [
      "Today's Top Hits",
      "RapCaviar",
      "Chill Vibes",
      "Rock Classics",
      "Daily Mix 1",
      "Workout Motivation",
      "Peaceful Piano",
      "Party Playlist",
      "Bollywood Beats",
      "Lo-Fi Chill",
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Spotify Playlists"), centerTitle: true),

      body: ListView.separated(
        padding: const EdgeInsets.all(12),

        itemCount: playlists.length,

        // Divider between playlists
        separatorBuilder: (context, index) {
          return const Divider(thickness: 1);
        },

        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.music_note, color: Colors.green),

            title: Text(
              playlists[index],
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          );
        },
      ),
    );
  }
}
