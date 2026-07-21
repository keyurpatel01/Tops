/* Create a StatefulWidget called FollowerCountWidget that displays a YouTube-style
 follower count (e.g., '1.2K'). Add a button to increment the count by 1,000 each time 
 it's pressed and update the display using setState.<br><br><em><strong>Hint:</strong> 
 Use setState inside the button's onPressed to update the count and format the number as 'K' 
 for thousands.</em> 
 */
import 'package:flutter/material.dart';

class S2P4 extends StatefulWidget {
  const S2P4({super.key});

  @override
  State<S2P4> createState() => _S2P4State();
}

class _S2P4State extends State<S2P4> {
  int followers = 1200;

  String increaseFollowers(int count) {
    if (count >= 1000) {
      return "${(count / 1000).toStringAsFixed(1)}K";
    }
    return count.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YouTube Follower Count'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Your Followers', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            Text(
              increaseFollowers(followers),
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            followers += 1000;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
