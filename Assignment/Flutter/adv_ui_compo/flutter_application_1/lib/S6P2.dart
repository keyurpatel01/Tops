import 'package:flutter/material.dart';

// Main Playlist Screen
class S6p2 extends StatelessWidget {
  const S6p2({super.key});

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
class MyPlaylistTab extends StatefulWidget {
  const MyPlaylistTab({super.key});

  @override
  State<MyPlaylistTab> createState() => _MyPlaylistTabState();
}

class _MyPlaylistTabState extends State<MyPlaylistTab>
    with AutomaticKeepAliveClientMixin {
  List<String> songs = [
    "Blinding Lights - The Weeknd",
    "Shape of You - Ed Sheeran",
    "Perfect - Ed Sheeran",
    "Believer - Imagine Dragons",
    "Levitating - Dua Lipa",
    "Stay - Justin Bieber",
    "Closer - Chainsmokers",
    "Counting Stars - OneRepublic",
    "Love Yourself - Justin Bieber",
    "Memories - Maroon 5",
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);

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

  @override
  bool get wantKeepAlive => true;
}

// Liked Songs Tab
class LikedSongsTab extends StatefulWidget {
  const LikedSongsTab({super.key});

  @override
  State<LikedSongsTab> createState() => _LikedSongsTabState();
}

class _LikedSongsTabState extends State<LikedSongsTab>
    with AutomaticKeepAliveClientMixin {
  List<String> likedSongs = [
    "Tum Hi Ho - Arijit Singh",
    "Kesariya - Arijit Singh",
    "Night Changes - One Direction",
    "Heat Waves - Glass Animals",
    "Faded - Alan Walker",
    "Dusk Till Dawn - Zayn",
    "Cheap Thrills - Sia",
    "Hymn For The Weekend - Coldplay",
    "Photograph - Ed Sheeran",
    "Attention - Charlie Puth",
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);

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

  @override
  bool get wantKeepAlive => true;
}
