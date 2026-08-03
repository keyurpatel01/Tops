import 'package:flutter/material.dart';

class S5p5 extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const S5p5({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: true,

      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.music_note_outlined),

          activeIcon: Icon(Icons.music_note),

          label: "Songs",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.album_outlined),

          activeIcon: Icon(Icons.album),

          label: "Albums",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),

          activeIcon: Icon(Icons.person),

          label: "Profile",
        ),
      ],
    );
  }
}

class SongsScreen extends StatelessWidget {
  const SongsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Icon(Icons.music_note, size: 90, color: Colors.green),

          SizedBox(height: 15),

          Text(
            "Songs Screen",

            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class AlbumsScreen extends StatelessWidget {
  const AlbumsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Icon(Icons.album, size: 90, color: Colors.blue),

          SizedBox(height: 15),

          Text(
            "Albums Screen",

            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Icon(Icons.person, size: 90, color: Colors.orange),

          SizedBox(height: 15),

          Text(
            "Profile Screen",

            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
