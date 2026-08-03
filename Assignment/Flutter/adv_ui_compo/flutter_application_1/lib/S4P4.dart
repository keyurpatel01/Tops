import 'package:flutter/material.dart';

class S4p4 extends StatelessWidget {
  const S4p4({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> teams = [
      {
        "name": "Chennai Super Kings",
        "logo":
            "https://upload.wikimedia.org/wikipedia/en/2/2b/Chennai_Super_Kings_Logo.svg",
      },

      {
        "name": "Mumbai Indians",
        "logo":
            "https://upload.wikimedia.org/wikipedia/en/c/cd/Mumbai_Indians_Logo.svg",
      },

      {
        "name": "Royal Challengers Bengaluru",
        "logo":
            "https://upload.wikimedia.org/wikipedia/en/4/4f/Royal_Challengers_Bangalore_Logo.svg",
      },

      {
        "name": "Kolkata Knight Riders",
        "logo":
            "https://upload.wikimedia.org/wikipedia/en/6/6e/Kolkata_Knight_Riders_Logo.svg",
      },

      {
        "name": "Sunrisers Hyderabad",
        "logo":
            "https://upload.wikimedia.org/wikipedia/en/a/a8/Sunrisers_Hyderabad_Logo.svg",
      },

      {
        "name": "Rajasthan Royals",
        "logo":
            "https://upload.wikimedia.org/wikipedia/en/8/88/Rajasthan_Royals_Logo.svg",
      },

      {
        "name": "Delhi Capitals",
        "logo":
            "https://upload.wikimedia.org/wikipedia/en/2/2f/Delhi_Capitals_Logo.svg",
      },

      {
        "name": "Punjab Kings",
        "logo":
            "https://upload.wikimedia.org/wikipedia/en/d/d4/Punjab_Kings_Logo.svg",
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("IPL Teams"), centerTitle: true),

      body: GridView.builder(
        padding: const EdgeInsets.all(12),

        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,

          crossAxisSpacing: 12,

          mainAxisSpacing: 12,
        ),

        itemCount: teams.length,

        itemBuilder: (context, index) {
          return GestureDetector(
            // Detect swipe gesture
            onHorizontalDragEnd: (details) {
              // Right swipe detection
              if (details.primaryVelocity! > 0) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("${teams[index]["name"]} Added to Watchlist"),
                  ),
                );
              }
            },

            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,

                  MaterialPageRoute(
                    builder: (context) =>
                        TeamDetailsScreen(teamName: teams[index]["name"]!),
                  ),
                );
              },

              child: Card(
                elevation: 5,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Image.network(
                      teams[index]["logo"]!,

                      height: 80,

                      width: 80,

                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.sports_cricket, size: 70);
                      },
                    ),

                    const SizedBox(height: 12),

                    Text(
                      teams[index]["name"]!,

                      textAlign: TextAlign.center,

                      style: const TextStyle(
                        fontSize: 16,

                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// Team Details Screen
class TeamDetailsScreen extends StatelessWidget {
  final String teamName;

  const TeamDetailsScreen({super.key, required this.teamName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(teamName)),

      body: Center(
        child: Text(
          "$teamName\n\nTeam details will be displayed here.",

          textAlign: TextAlign.center,

          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
