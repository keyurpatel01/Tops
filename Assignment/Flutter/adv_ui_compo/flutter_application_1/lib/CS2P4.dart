import 'package:flutter/material.dart';

class Cs2p4 extends StatelessWidget {
  const Cs2p4({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DefaultTabController(
      length: 3,

      child: Scaffold(
        appBar: AppBar(
          title: Text("ServiceHub", style: theme.textTheme.titleLarge),

          centerTitle: true,

          bottom: TabBar(
            labelColor: theme.colorScheme.primary,

            unselectedLabelColor: theme.colorScheme.onSurfaceVariant,

            tabs: const [
              Tab(icon: Icon(Icons.local_fire_department), text: "Trending"),

              Tab(icon: Icon(Icons.favorite), text: "Favorites"),

              Tab(icon: Icon(Icons.location_on), text: "Nearby"),
            ],
          ),
        ),

        drawer: Drawer(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),

              child: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),

                    decoration: BoxDecoration(
                      color: theme.colorScheme.primaryContainer,

                      borderRadius: BorderRadius.circular(16),
                    ),

                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40,

                          backgroundImage: const NetworkImage(
                            "https://i.pravatar.cc/150?img=12",
                          ),

                          backgroundColor: theme.colorScheme.surface,
                        ),

                        const SizedBox(height: 12),

                        Text(
                          "Keyur Patel",

                          style: theme.textTheme.titleLarge?.copyWith(
                            color: theme.colorScheme.onPrimaryContainer,
                          ),
                        ),

                        const SizedBox(height: 6),

                        Text(
                          "keyurpatel@gmail.com",

                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.onPrimaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  DrawerItem(icon: Icons.home, title: "Home"),

                  DrawerItem(icon: Icons.shopping_bag, title: "Orders"),

                  DrawerItem(icon: Icons.settings, title: "Settings"),

                  DrawerItem(icon: Icons.logout, title: "Logout"),
                ],
              ),
            ),
          ),
        ),

        body: const TabBarView(
          children: [
            TabContent(
              icon: Icons.local_fire_department,

              title: "Trending Services",

              description: "Popular services everyone is using",
            ),

            TabContent(
              icon: Icons.favorite,

              title: "Favorite Services",

              description: "Your saved services appear here",
            ),

            TabContent(
              icon: Icons.location_on,

              title: "Nearby Services",

              description: "Find services around your location",
            ),
          ],
        ),
      ),
    );
  }
}

// Drawer Reusable Widget

class DrawerItem extends StatelessWidget {
  final IconData icon;

  final String title;

  const DrawerItem({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      contentPadding: EdgeInsets.zero,

      leading: Icon(icon, color: theme.colorScheme.primary),

      title: Text(title, style: theme.textTheme.bodyLarge),

      onTap: () {},
    );
  }
}

// Tab Content Widget

class TabContent extends StatelessWidget {
  final IconData icon;

  final String title;

  final String description;

  const TabContent({
    super.key,

    required this.icon,

    required this.title,

    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Icon(
              icon,

              size: theme.iconTheme.size,

              color: theme.colorScheme.primary,
            ),

            const SizedBox(height: 16),

            Text(
              title,

              textAlign: TextAlign.center,

              style: theme.textTheme.headlineSmall,
            ),

            const SizedBox(height: 10),

            Text(
              description,

              textAlign: TextAlign.center,

              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
