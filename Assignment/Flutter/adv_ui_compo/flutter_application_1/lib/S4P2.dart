import 'package:flutter/material.dart';

class S4p2 extends StatelessWidget {
  const S4p2({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> foodItems = [
      "Pizza",
      "Burger",
      "Dosa",
      "Biryani",
      "Pasta",
      "Sandwich",
      "Chinese Noodles",
      "Paneer Tikka",
      "Ice Cream",
      "Momos",
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Food Menu"), centerTitle: true),

      body: ListView.builder(
        padding: const EdgeInsets.all(12),

        itemCount: foodItems.length,

        itemBuilder: (context, index) {
          String food = foodItems[index];

          return InkWell(
            onLongPress: () {
              showModalBottomSheet(
                context: context,

                builder: (context) {
                  return Container(
                    padding: const EdgeInsets.all(20),

                    child: Column(
                      mainAxisSize: MainAxisSize.min,

                      children: [
                        Text(
                          food,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 15),

                        ListTile(
                          leading: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),

                          title: const Text("Add to Favourites"),

                          onTap: () {
                            Navigator.pop(context);

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("$food added to favourites"),
                              ),
                            );
                          },
                        ),

                        ListTile(
                          leading: const Icon(Icons.share),

                          title: const Text("Share"),

                          onTap: () {
                            Navigator.pop(context);

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Sharing $food")),
                            );
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },

            child: Card(
              elevation: 4,

              margin: const EdgeInsets.only(bottom: 12),

              child: ListTile(
                leading: const Icon(Icons.restaurant, size: 30),

                title: Text(
                  food,

                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
