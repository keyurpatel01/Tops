import 'package:flutter/material.dart';

class S1p4 extends StatelessWidget {
  const S1p4({super.key});

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

      body: ListView.separated(
        padding: const EdgeInsets.all(8),

        itemCount: trendingTeams.length,

        // Adds 12 pixels spacing between Cards
        separatorBuilder: (context, index) {
          return const SizedBox(height: 12);
        },

        itemBuilder: (context, index) {
          return Card(
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
          );
        },
      ),
    );
  }
}
