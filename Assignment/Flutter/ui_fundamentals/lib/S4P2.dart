/*
  Build a Zomato-style horizontal menu bar using a Row inside a Container — display four
   menu items (e.g., Home, Orders, Offers, Profile) with equal spacing and add padding around 
   each item.<br><br><em><strong>Hint:</strong> Use MainAxisAlignment.spaceEvenly and EdgeInsets 
   for padding.</em>
*/
import 'package:flutter/material.dart';

class S4P2 extends StatelessWidget {
  const S4P2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Zomato Menu'), backgroundColor: Colors.green),

      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          color: Colors.redAccent.shade100,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                child: Text('Home', style: TextStyle(fontSize: 18)),
              ),

              Container(
                padding: EdgeInsets.all(12),
                child: Text('Orders', style: TextStyle(fontSize: 18)),
              ),

              Container(
                padding: EdgeInsets.all(12),
                child: Text('Offers', style: TextStyle(fontSize: 18)),
              ),

              Container(
                padding: EdgeInsets.all(12),
                child: Text('Profile', style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
