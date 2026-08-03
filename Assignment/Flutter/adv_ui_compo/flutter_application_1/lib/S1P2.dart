//Modify your ListView to display each IPL team inside a Card widget with padding and a leading 
//Icon (use Icons.sports_cricket), so the list looks similar to a sports app's team list.<br><br
//><em><strong>Hint:</strong> Use ListView's children property and wrap each Card with Padding 
//or better spacing.</em>

import 'package:flutter/material.dart';

class S1p2 extends StatelessWidget {
  const S1p2({super.key});

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

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              child: ListTile(
                leading: const Icon(Icons.sports_cricket),
                title: Text(trendingTeams[0]),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              child: ListTile(
                leading: const Icon(Icons.sports_cricket),
                title: Text(trendingTeams[1]),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              child: ListTile(
                leading: const Icon(Icons.sports_cricket),
                title: Text(trendingTeams[2]),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              child: ListTile(
                leading: const Icon(Icons.sports_cricket),
                title: Text(trendingTeams[3]),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              child: ListTile(
                leading: const Icon(Icons.sports_cricket),
                title: Text(trendingTeams[4]),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              child: ListTile(
                leading: const Icon(Icons.sports_cricket),
                title: Text(trendingTeams[5]),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              child: ListTile(
                leading: const Icon(Icons.sports_cricket),
                title: Text(trendingTeams[6]),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              child: ListTile(
                leading: const Icon(Icons.sports_cricket),
                title: Text(trendingTeams[7]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
