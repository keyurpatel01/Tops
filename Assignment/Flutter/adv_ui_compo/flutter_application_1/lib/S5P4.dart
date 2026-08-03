import 'package:flutter/material.dart';

class S5p4 extends StatefulWidget {
  const S5p4({super.key});

  @override
  State<S5p4> createState() => _S5p4State();
}

class _S5p4State extends State<S5p4> {
  int selectedIndex = 0;

  final List<Widget> screens = [
    const SongsScreen(),

    const AlbumsScreen(),

    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Music App"), centerTitle: true),

      // Display selected screen
      body: screens[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        // Highlight selected item
        currentIndex: selectedIndex,

        // Change tab
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },

        // Active tab color
        selectedItemColor: Colors.green,

        // Inactive tab color
        unselectedItemColor: Colors.grey,

        // Display labels
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
      ),
    );
  }
}

// Songs Screen
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

// Albums Screen
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

// Profile Screen
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
