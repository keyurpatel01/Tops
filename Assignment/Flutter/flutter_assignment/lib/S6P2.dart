/*
  Build a simple playlist voting feature: show a song name and two buttons, 'Upvote' and '
  Downvote'. When the user presses either button, update and display the current vote count in
   real time using setState.<br><br><em><strong>Hint:</strong> Use onPressed for the buttons and 
   update a voteCount variable inside setState.</em>
*/
import 'package:flutter/material.dart';

class S6P2 extends StatefulWidget {
  const S6P2({super.key});

  @override
  State<S6P2> createState() => _S6P2State();
}

class _S6P2State extends State<S6P2> {
  int voteCount = 0;
  String songName = "Perfect - Ed Sheeran";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Playlist Voting"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                songName,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                "Votes: $voteCount",
                style: const TextStyle(fontSize: 22, color: Colors.green),
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        voteCount++;
                      });
                    },
                    icon: const Icon(Icons.thumb_up),
                    label: const Text("Upvote"),
                  ),

                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        if (voteCount > 0) {
                          voteCount--;
                        }
                      });
                    },
                    icon: const Icon(Icons.thumb_down),
                    label: const Text("Downvote"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
