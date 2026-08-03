import 'package:flutter/material.dart';

class S6p5 extends StatelessWidget {
  const S6p5({super.key});

  @override
  Widget build(BuildContext context) {
    // Dynamic list of tab names
    final List<String> tabNames = ["Favourites", "Trending", "Downloaded"];

    // Songs for each tab
    final Map<String, List<String>> songs = {
      "Favourites": ["Perfect", "Believer", "Shape of You", "Levitating"],
      "Trending": ["Calm Down", "Flowers", "Espresso", "Greedy"],
      "Downloaded": ["Night Changes", "Heat Waves", "Faded", "Stay"],
    };

    return DefaultTabController(
      length: tabNames.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Playlist Screen"),
          centerTitle: true,
          bottom: TabBar(
            isScrollable: true,
            tabs: tabNames.map((tab) {
              return Tab(text: tab);
            }).toList(),
          ),
        ),
        body: TabBarView(
          children: tabNames.map((tab) {
            return ListView.builder(
              itemCount: songs[tab]!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.music_note, color: Colors.green),
                  title: Text(songs[tab]![index]),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
