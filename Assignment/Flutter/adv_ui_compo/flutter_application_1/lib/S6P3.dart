import 'package:flutter/material.dart';

class S6p3 extends StatelessWidget {
  const S6p3({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Music Playlist"),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.playlist_play), text: "My Playlists"),
              Tab(icon: Icon(Icons.favorite), text: "Liked Songs"),
              Tab(icon: Icon(Icons.history), text: "Recently Played"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [MyPlaylistTab(), LikedSongsTab(), RecentlyPlayedTab()],
        ),
      ),
    );
  }
}

// My Playlists Tab
class MyPlaylistTab extends StatelessWidget {
  const MyPlaylistTab({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> songs = [
      "Blinding Lights",
      "Shape of You",
      "Believer",
      "Perfect",
      "Levitating",
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
      "Tum Hi Ho",
      "Kesariya",
      "Night Changes",
      "Heat Waves",
      "Photograph",
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

// Recently Played Tab
class RecentlyPlayedTab extends StatelessWidget {
  const RecentlyPlayedTab({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> recentSongs = [
      "Calm Down",
      "Unstoppable",
      "Attention",
      "Faded",
      "Stay",
    ];

    return ListView.builder(
      itemCount: recentSongs.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.history, color: Colors.blue),
          title: Text(recentSongs[index]),
        );
      },
    );
  }
}
