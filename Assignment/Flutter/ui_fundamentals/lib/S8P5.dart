/*
  Build a reusable SongTile widget that displays a song name and an 'Add to Playlist' button, 
  and ensure both use the app-wide styles from your ThemeData for text and buttons.

*/

import 'package:flutter/material.dart';

class S8P5 extends StatelessWidget {
  const S8P5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "Music App",

      // App-wide ThemeData
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.purple,
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
        ),
      ),

      home: const MusicHomePage(),
    );
  }
}

// Reusable SongTile Widget
class SongTile extends StatelessWidget {
  final String songName;

  const SongTile({super.key, required this.songName});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: ListTile(
        title: Text(songName, style: Theme.of(context).textTheme.bodyLarge),

        trailing: ElevatedButton(
          onPressed: () {},
          child: const Text("Add to Playlist"),
        ),
      ),
    );
  }
}

// Home Screen
class MusicHomePage extends StatelessWidget {
  const MusicHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Music Playlist")),

      body: Column(
        children: const [
          SongTile(songName: "Perfect - Ed Sheeran"),

          SongTile(songName: "Believer - Imagine Dragons"),

          SongTile(songName: "Shape of You - Ed Sheeran"),
        ],
      ),
    );
  }
}
