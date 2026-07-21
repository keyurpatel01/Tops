/*
  Convert your SongTitleCard widget into a StatefulWidget and add a 'Like' heart icon button. 
  When the button is tapped, toggle the heart color between grey and red using setState to show 
  the liked/unliked state.
*/
import 'package:flutter/material.dart';

class S2P3 extends StatefulWidget {
  const S2P3({super.key});

  @override
  State<S2P3> createState() => _S2P3State();
}

class _S2P3State extends State<S2P3> {
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Song Title Card'),
        backgroundColor: Colors.green,
      ),
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
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isLike = !isLike;
                          });
                        },
                        icon: isLike
                            ? Icon(Icons.favorite, color: Colors.red, size: 30)
                            : Icon(
                                Icons.favorite_border_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
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
