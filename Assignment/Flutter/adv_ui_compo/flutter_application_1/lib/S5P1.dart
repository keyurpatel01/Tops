import 'package:flutter/material.dart';

class S5p1 extends StatefulWidget {
  const S5p1({super.key});

  @override
  State<S5p1> createState() => _S5p1State();
}

class _S5p1State extends State<S5p1> {
  int selectedIndex = 0;

  List<String> tabs = ["Songs", "Albums", "Profile"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Music App"), centerTitle: true),

      body: Center(
        child: Text(
          tabs[selectedIndex],

          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),

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
