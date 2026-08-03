/*
Add vertical spacing of 12 pixels between each Card in your ListView.builder to improve 
readability, similar to how Zomato separates restaurant cards.<br><br><em><strong>Hint:</strong> 
You can use the separatorBuilder property of ListView.separated for this effect.</em>

*/
import 'package:flutter/material.dart';

class S1p1 extends StatelessWidget {
  const S1p1({super.key});

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
        padding: const EdgeInsets.all(16),
        children: [
          Text(trendingTeams[0], style: TextStyle(fontSize: 20)),
          Text(trendingTeams[1], style: TextStyle(fontSize: 20)),
          Text(trendingTeams[2], style: TextStyle(fontSize: 20)),
          Text(trendingTeams[3], style: TextStyle(fontSize: 20)),
          Text(trendingTeams[4], style: TextStyle(fontSize: 20)),
          Text(trendingTeams[5], style: TextStyle(fontSize: 20)),
          Text(trendingTeams[6], style: TextStyle(fontSize: 20)),
          Text(trendingTeams[7], style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
