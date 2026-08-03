import 'package:flutter/material.dart';

class S5p3 extends StatefulWidget {
  const S5p3({super.key});

  @override
  State<S5p3> createState() => _S5p3State();
}

class _S5p3State extends State<S5p3> {
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
        // Keeps selected item highlighted
        currentIndex: selectedIndex,

        // Update selected index
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: "Songs"),

          BottomNavigationBarItem(icon: Icon(Icons.album), label: "Albums"),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
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
          Icon(Icons.music_note, size: 80),

          SizedBox(height: 10),

          Text("Songs Screen", style: TextStyle(fontSize: 25)),
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
          Icon(Icons.album, size: 80),

          SizedBox(height: 10),

          Text("Albums Screen", style: TextStyle(fontSize: 25)),
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
          Icon(Icons.person, size: 80),

          SizedBox(height: 10),

          Text("Profile Screen", style: TextStyle(fontSize: 25)),
        ],
      ),
    );
  }
}
