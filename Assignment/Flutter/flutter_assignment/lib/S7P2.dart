/*
  Build a horizontal row of three buttons (like Instagram's profile tabs: Posts, Reels, Tagged) 
  using Expanded widgets so that each button always takes equal space, no matter the screen 
  size.

*/
import 'package:flutter/material.dart';

class S7P2 extends StatelessWidget {
  const S7P2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Instagram Profile Tabs")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.grid_on),
                label: const Text("Posts"),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.video_library),
                label: const Text("Reels"),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.person_pin_outlined),
                label: const Text("Tagged"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
