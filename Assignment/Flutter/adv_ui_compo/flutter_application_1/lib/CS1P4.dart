import 'package:flutter/material.dart';

class Cs1p4 extends StatefulWidget {
  const Cs1p4({super.key});

  @override
  State<Cs1p4> createState() => _Cs1p4State();
}

class _Cs1p4State extends State<Cs1p4> {
  int selectedIndex = 0;

  final List<Widget> pages = const [
    HomeScreen(),
    ExploreScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ServiceHub"), centerTitle: true),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

//==================== HOME SCREEN ====================

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> services = [
      {
        "name": "Food Delivery",
        "icon": Icons.fastfood,
        "description": "Order food from your favourite restaurants.",
      },
      {
        "name": "Movie Tickets",
        "icon": Icons.movie,
        "description": "Book movie tickets online easily.",
      },
      {
        "name": "Mobile Recharge",
        "icon": Icons.phone_android,
        "description": "Recharge your prepaid or postpaid mobile.",
      },
      {
        "name": "Train Booking",
        "icon": Icons.train,
        "description": "Reserve train tickets across India.",
      },
      {
        "name": "IPL Fantasy",
        "icon": Icons.sports_cricket,
        "description": "Play fantasy cricket and win rewards.",
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: services.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.only(bottom: 10),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue.shade100,
              child: Icon(services[index]["icon"], color: Colors.blue),
            ),
            title: Text(
              services[index]["name"],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailsScreen(
                    title: services[index]["name"],
                    description: services[index]["description"],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

//==================== EXPLORE SCREEN ====================

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> categories = [
      {
        "title": "Food",
        "image":
            "https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=400",
        "description": "Explore the best restaurants near you.",
      },
      {
        "title": "Travel",
        "image":
            "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=400",
        "description": "Book flights, hotels, and holiday packages.",
      },
      {
        "title": "Shopping",
        "image":
            "https://images.unsplash.com/photo-1483985988355-763728e1935b?w=400",
        "description": "Buy fashion, electronics, and more.",
      },
      {
        "title": "Entertainment",
        "image":
            "https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?w=400",
        "description": "Watch movies and enjoy live events.",
      },
      {
        "title": "Payments",
        "image":
            "https://images.unsplash.com/photo-1556740749-887f6717d7e4?w=400",
        "description": "Pay bills and transfer money securely.",
      },
      {
        "title": "Sports",
        "image":
            "https://images.unsplash.com/photo-1540747913346-19e32dc3e97e?w=400",
        "description": "Follow your favourite sports and matches.",
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.85,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailsScreen(
                    title: categories[index]["title"]!,
                    description: categories[index]["description"]!,
                  ),
                ),
              );
            },
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(12),
                      ),
                      child: Image.network(
                        categories[index]["image"]!,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      categories[index]["title"]!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

//==================== PROFILE SCREEN ====================

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(radius: 45, child: Icon(Icons.person, size: 45)),
          SizedBox(height: 15),
          Text(
            "Profile",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

//==================== DETAILS SCREEN ====================

class DetailsScreen extends StatelessWidget {
  final String title;
  final String description;

  const DetailsScreen({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.info, size: 90, color: Colors.blue),
              const SizedBox(height: 20),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18, color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
