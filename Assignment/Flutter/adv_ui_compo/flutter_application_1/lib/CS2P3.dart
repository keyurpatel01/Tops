import 'package:flutter/material.dart';

class Cs2p3 extends StatelessWidget {
  const Cs2p3({super.key});

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

        // Drawer
        drawer: Drawer(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),

              child: ListView(
                children: [
                  // Profile Header
                  Container(
                    padding: const EdgeInsets.all(16),

                    decoration: BoxDecoration(
                      color: Colors.blue,

                      borderRadius: BorderRadius.circular(16),
                    ),

                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 40,

                          backgroundImage: NetworkImage(
                            "https://i.pravatar.cc/150?img=12",
                          ),
                        ),

                        const SizedBox(height: 12),

                        const Text(
                          "Keyur Patel",

                          style: TextStyle(
                            color: Colors.white,

                            fontSize: 20,

                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 6),

                        const Text(
                          "keyurpatel@gmail.com",

                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Drawer Items
                  ListTile(
                    contentPadding: EdgeInsets.zero,

                    leading: const Icon(Icons.home),

                    title: const Text("Home", style: TextStyle(fontSize: 16)),

                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),

                  ListTile(
                    contentPadding: EdgeInsets.zero,

                    leading: const Icon(Icons.shopping_bag),

                    title: const Text("Orders", style: TextStyle(fontSize: 16)),

                    onTap: () {},
                  ),

                  ListTile(
                    contentPadding: EdgeInsets.zero,

                    leading: const Icon(Icons.settings),

                    title: const Text(
                      "Settings",
                      style: TextStyle(fontSize: 16),
                    ),

                    onTap: () {},
                  ),

                  ListTile(
                    contentPadding: EdgeInsets.zero,

                    leading: const Icon(Icons.logout),

                    title: const Text("Logout", style: TextStyle(fontSize: 16)),

                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ),

        body: const TabBarView(
          children: [
            // Trending Tab
            TabContent(
              icon: Icons.local_fire_department,

              color: Colors.orange,

              title: "Trending Services",

              description: "Popular services everyone is using",
            ),

            // Favorite Tab
            TabContent(
              icon: Icons.favorite,

              color: Colors.red,

              title: "Favorite Services",

              description: "Your saved services appear here",
            ),

            // Nearby Tab
            TabContent(
              icon: Icons.location_on,

              color: Colors.green,

              title: "Nearby Services",

              description: "Find services around your location",
            ),
          ],
        ),
      ),
    );
  }
}

// Reusable Tab Content Widget

class TabContent extends StatelessWidget {
  final IconData icon;

  final Color color;

  final String title;

  final String description;

  const TabContent({
    super.key,

    required this.icon,

    required this.color,

    required this.title,

    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Icon(icon, size: 90, color: color),

            const SizedBox(height: 16),

            Text(
              title,

              textAlign: TextAlign.center,

              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Text(
              description,

              textAlign: TextAlign.center,

              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
