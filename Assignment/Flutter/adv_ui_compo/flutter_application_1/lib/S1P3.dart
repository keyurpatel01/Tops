//Replace your static ListView with a ListView.builder that generates the list of IPL teams from
//a Dart List<String> variable, so you can easily change the team names without editing the UI
//code.

import 'package:flutter/material.dart';

class S1p3 extends StatelessWidget {
  const S1p3({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> trendingTeams = [
      "Chennai Super Kings (CSK)",
      "Mumbai Indians (MI)",
      "Royal Challengers Bengaluru (RCB)",
      "Kolkata Knight Riders (KKR)",
      "Sunrisers Hyderabad (SRH)",
      "Rajasthan Royals (RR)",
      "Delhi Capitals (DC)",
      "Punjab Kings (PBKS)",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Trending IPL Teams"),
        centerTitle: true,
      ),

      body: ListView.builder(
        itemCount: trendingTeams.length,

        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),

            child: Card(
              elevation: 5,

              child: ListTile(
                leading: const Icon(Icons.sports_cricket, size: 35),

                title: Text(
                  trendingTeams[index],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
