import 'package:flutter/material.dart';

class Cs2p1 extends StatelessWidget {
  const Cs2p1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ServiceHub"), centerTitle: true),

      // Left Side Navigation Drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // User Profile Header
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Colors.blue),

              currentAccountPicture: const CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  "https://i.pravatar.cc/150?img=12",
                ),
              ),

              accountName: const Text(
                "Keyur Patel",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              accountEmail: const Text(
                "keyurpatel@gmail.com",
                style: TextStyle(fontSize: 14),
              ),
            ),

            // Home Menu
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            // My Services
            ListTile(
              leading: const Icon(Icons.miscellaneous_services),
              title: const Text("My Services"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            // Orders
            ListTile(
              leading: const Icon(Icons.shopping_bag),
              title: const Text("Orders"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            // Settings
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            // Logout
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.dashboard, size: 80, color: Colors.blue),

            SizedBox(height: 15),

            Text(
              "ServiceHub Dashboard",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
