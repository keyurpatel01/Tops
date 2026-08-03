import 'package:flutter/material.dart';

// Main Navigation Screen
class S5p2 extends StatefulWidget {
  const S5p2({super.key});

  @override
  State<S5p2> createState() => _S5p2State();
}

class _S5p2State extends State<S5p2> {
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

      body: screens[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,

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
          Icon(Icons.music_note, size: 80, color: Colors.green),

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
          Icon(Icons.album, size: 80, color: Colors.blue),

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
          Icon(Icons.person, size: 80, color: Colors.orange),

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
