import 'package:flutter/material.dart';

class Cs2p2 extends StatelessWidget {
  const Cs2p2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,

      child: Scaffold(
        appBar: AppBar(
          title: const Text("ServiceHub"),
          centerTitle: true,

          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.local_fire_department), text: "Trending"),

              Tab(icon: Icon(Icons.favorite), text: "Favorites"),

              Tab(icon: Icon(Icons.location_on), text: "Nearby"),
            ],
          ),
        ),

        body: const TabBarView(
          children: [
            // Trending Tab
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    size: 90,
                    color: Colors.orange,
                  ),

                  SizedBox(height: 15),

                  Text(
                    "Trending Services",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 8),

                  Text(
                    "Popular services everyone is using",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),

            // Favorites Tab
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite, size: 90, color: Colors.red),

                  SizedBox(height: 15),

                  Text(
                    "Favorite Services",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 8),

                  Text(
                    "Your saved services appear here",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),

            // Nearby Tab
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on, size: 90, color: Colors.green),

                  SizedBox(height: 15),

                  Text(
                    "Nearby Services",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 8),

                  Text(
                    "Find services around your location",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
