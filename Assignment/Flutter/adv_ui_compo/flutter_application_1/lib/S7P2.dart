import 'package:flutter/material.dart';

class S7p2 extends StatelessWidget {
  const S7p2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigation Drawer"), centerTitle: true),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text(
                "Keyur Patel",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text("keyurpatel@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://i.pravatar.cc/150?img=12",
                ),
              ),
              decoration: BoxDecoration(color: Colors.blue),
            ),

            // My Orders
            ListTile(
              leading: const Icon(Icons.shopping_bag_outlined),
              title: const Text("My Orders"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            // Favourites
            ListTile(
              leading: const Icon(Icons.favorite_border, color: Colors.red),
              title: const Text("Favourites"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            const Divider(),

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
        child: Text(
          "Open the Navigation Drawer",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
