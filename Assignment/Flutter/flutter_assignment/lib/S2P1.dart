/*
  Create a Flutter widget called SongTitleCard that displays a static song title 
  and artist name as seen on Spotify's Now Playing screen. Use StatelessWidget for 
  this implementation.
*/

import 'package:flutter/material.dart';

class S2P1 extends StatelessWidget {
  const S2P1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Spotify'), backgroundColor: Colors.green),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          SizedBox(
            height: 150,
            child: Center(
              child: Card(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Shape of You",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "- Ed Sheeran",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
