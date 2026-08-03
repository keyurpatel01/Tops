import 'package:flutter/material.dart';

class S6p4 extends StatelessWidget {
  const S6p4({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Product Details"),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.description), text: "Description"),
              Tab(icon: Icon(Icons.star), text: "Reviews"),
              Tab(icon: Icon(Icons.question_answer), text: "Q&A"),
            ],
          ),
        ),

        body: Column(
          children: [
            // Product Image
            Container(
              height: 220,
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              child: Image.network(
                "https://picsum.photos/300",
                fit: BoxFit.contain,
              ),
            ),

            // Product Name & Price
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Apple iPhone 15 (128 GB)",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "₹69,999",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Tab Content
            const Expanded(
              child: TabBarView(
                children: [DescriptionTab(), ReviewsTab(), QATab()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Description Tab
class DescriptionTab extends StatelessWidget {
  const DescriptionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        "This is a placeholder product description. "
        "Here you can display product features, specifications, "
        "and other important information.",
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

// Reviews Tab
class ReviewsTab extends StatelessWidget {
  const ReviewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Rahul"),
          subtitle: Text("⭐⭐⭐⭐⭐ Excellent product!"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Priya"),
          subtitle: Text("⭐⭐⭐⭐ Good value for money."),
        ),
      ],
    );
  }
}

// Q&A Tab
class QATab extends StatelessWidget {
  const QATab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        ListTile(
          title: Text("Q: Does it support 5G?"),
          subtitle: Text("A: Yes, it supports 5G connectivity."),
        ),
        Divider(),
        ListTile(
          title: Text("Q: Does it include a charger?"),
          subtitle: Text("A: No, the charger is not included in the box."),
        ),
      ],
    );
  }
}
