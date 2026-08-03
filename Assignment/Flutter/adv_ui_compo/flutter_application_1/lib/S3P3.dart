import 'package:flutter/material.dart';

class S3p3 extends StatelessWidget {
  const S3p3({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> products = [
      {"category": "Mobiles", "name": "iPhone 15", "price": "₹70,000"},

      {"category": "Mobiles", "name": "Samsung Galaxy S24", "price": "₹65,000"},

      {"category": "Mobiles", "name": "OnePlus 12", "price": "₹55,000"},

      {"category": "Laptops", "name": "MacBook Air M3", "price": "₹1,10,000"},

      {"category": "Laptops", "name": "Dell Inspiron", "price": "₹60,000"},

      {"category": "Fashion", "name": "Nike Shoes", "price": "₹5,000"},

      {"category": "Fashion", "name": "Puma T-Shirt", "price": "₹1,500"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Flipkart Products"), centerTitle: true),

      body: ListView.separated(
        padding: const EdgeInsets.all(12),

        itemCount: products.length,

        separatorBuilder: (context, index) {
          // Check category change
          if (products[index]["category"] != products[index + 1]["category"]) {
            return Column(
              children: [
                const SizedBox(height: 10),

                Divider(thickness: 3, color: Colors.blue),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),

                  child: Align(
                    alignment: Alignment.centerLeft,

                    child: Text(
                      products[index + 1]["category"],

                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }

          return const Divider(thickness: 1);
        },

        itemBuilder: (context, index) {
          return Card(
            elevation: 4,

            child: ListTile(
              leading: const Icon(Icons.shopping_cart),

              title: Text(
                products[index]["name"],

                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              subtitle: Text(products[index]["category"]),

              trailing: Text(
                products[index]["price"],

                style: const TextStyle(
                  color: Colors.green,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
