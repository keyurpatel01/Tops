import 'package:flutter/material.dart';

class S8p2 extends StatefulWidget {
  const S8p2({super.key});

  @override
  State<S8p2> createState() => _S8p2State();
}

class _S8p2State extends State<S8p2> {
  int selectedIndex = 0;

  final List<Widget> screens = const [
    HomeScreen(),
    OrdersScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Food Delivery"), centerTitle: true),

      body: screens[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,

        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            activeIcon: Icon(Icons.shopping_bag),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

// ---------------- HOME SCREEN ----------------

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> restaurants = [
      {"name": "Pizza Hub", "cuisine": "Italian", "rating": "4.8"},
      {"name": "Burger Point", "cuisine": "Fast Food", "rating": "4.6"},
      {"name": "Biryani House", "cuisine": "Indian", "rating": "4.9"},
      {"name": "Chinese Wok", "cuisine": "Chinese", "rating": "4.5"},
      {"name": "South Express", "cuisine": "South Indian", "rating": "4.7"},
      {"name": "Dessert Corner", "cuisine": "Desserts", "rating": "4.4"},
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: restaurants.length,
      itemBuilder: (context, index) {
        final restaurant = restaurants[index];

        return Card(
          elevation: 4,
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.orange,
              child: Icon(Icons.restaurant, color: Colors.white),
            ),
            title: Text(
              restaurant["name"],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(restaurant["cuisine"]),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.star, color: Colors.green),
                const SizedBox(width: 4),
                Text(restaurant["rating"]),
              ],
            ),
          ),
        );
      },
    );
  }
}

// ---------------- ORDERS SCREEN ----------------

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.shopping_bag, size: 80, color: Colors.orange),
          SizedBox(height: 10),
          Text(
            "Orders Screen",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

// ---------------- PROFILE SCREEN ----------------

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(radius: 45, child: Icon(Icons.person, size: 45)),
          SizedBox(height: 12),
          Text(
            "Profile Screen",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
