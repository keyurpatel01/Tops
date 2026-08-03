/*
  Build a simple Flipkart-style product card using StatelessWidget that shows a product image, 
  name, and price. Change the product name and price by editing the code, then hot reload to 
  see the update.

*/
import 'package:flutter/material.dart';

class S2P2 extends StatelessWidget {
  const S2P2({super.key});

  @override
  Widget build(BuildContext context) {
    String itemName = 'T-shirt';
    String itemPrice = '1000₹';
    return Scaffold(
      appBar: AppBar(title: Text('Flipkart'), backgroundColor: Colors.green),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 240,
              width: 200,
              child: Card(
                color: Colors.grey[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 150,
                      width: double.infinity,
                      child: Image.asset(
                        'assets/images/tshirt.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      itemName,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      itemPrice,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
