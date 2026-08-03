/*
  Refactor your FollowerCountWidget to display a SnackBar message 'Milestone reached!'
   whenever the follower count crosses 10,000, updating the UI accordingly.
*/
import 'package:flutter/material.dart';

class S2P5 extends StatefulWidget {
  const S2P5({super.key});

  @override
  State<S2P5> createState() => _S2P5State();
}

int followers = 1200;
int count = 0;

String increaseFollowers(int count) {
  if (count >= 1000) {
    return "${(count / 1000).toStringAsFixed(1)}K";
  }
  return count.toString();
}

class _S2P5State extends State<S2P5> {
  @override
  Widget build(BuildContext context) {
    void showMessage() {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Milestone reached!')));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Refactor your Follower'),
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
          if (followers >= 10000 && followers <= 11000) {
            showMessage();
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
