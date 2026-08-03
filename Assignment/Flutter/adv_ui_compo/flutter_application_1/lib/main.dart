import 'package:flutter/material.dart';
import 'package:flutter_application_1/S5P5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "Music Navigation Demo",

      theme: ThemeData(primarySwatch: Colors.green),

      home: const MusicHomeScreen(),
    );
  }
}

class MusicHomeScreen extends StatefulWidget {
  const MusicHomeScreen({super.key});

  @override
  State<MusicHomeScreen> createState() => _MusicHomeScreenState();
}

class _MusicHomeScreenState extends State<MusicHomeScreen> {
  int selectedIndex = 0;

  final List<Widget> screens = [
    const SongsScreen(),

    const AlbumsScreen(),

    const ProfileScreen(),
  ];

  void changeTab(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Music App"), centerTitle: true),

      body: screens[selectedIndex],

      bottomNavigationBar: S5p5(
        selectedIndex: selectedIndex,

        onItemTapped: changeTab,
      ),
    );
  }
}
