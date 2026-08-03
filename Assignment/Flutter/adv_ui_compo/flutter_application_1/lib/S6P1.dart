import 'package:flutter/material.dart';

// Playlist Screen with Tabs
class S6p1 extends StatelessWidget {
  const S6p1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,

      child: Scaffold(
        appBar: AppBar(
          title: const Text("Music Playlist"),

          centerTitle: true,

          bottom: const TabBar(
            tabs: [
              Tab(text: "My Playlists", icon: Icon(Icons.playlist_play)),

              Tab(text: "Liked Songs", icon: Icon(Icons.favorite)),
            ],
          ),
        ),

        body: const TabBarView(children: [MyPlaylistTab(), LikedSongsTab()]),
      ),
    );
  }
}

// My Playlist Tab
class MyPlaylistTab extends StatelessWidget {
  const MyPlaylistTab({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> songs = [
      "Blinding Lights - The Weeknd",

      "Shape of You - Ed Sheeran",

      "Perfect - Ed Sheeran",

      "Believer - Imagine Dragons",

      "Levitating - Dua Lipa",
    ];

    return ListView.builder(
      itemCount: songs.length,

      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.music_note, color: Colors.green),

          title: Text(songs[index]),
        );
      },
    );
  }
}

// Liked Songs Tab
class LikedSongsTab extends StatelessWidget {
  const LikedSongsTab({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> likedSongs = [
      "Tum Hi Ho - Arijit Singh",

      "Kesariya - Arijit Singh",

      "Night Changes - One Direction",

      "Counting Stars - OneRepublic",

      "Heat Waves - Glass Animals",
    ];

    return ListView.builder(
      itemCount: likedSongs.length,

      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.favorite, color: Colors.red),

          title: Text(likedSongs[index]),
        );
      },
    );
  }
}
