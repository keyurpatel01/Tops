/*
Design a custom button style in your ThemeData so that all ElevatedButtons
in your app have rounded corners and a green background by default.
*/

import 'package:flutter/material.dart';

class S8P3 extends StatelessWidget {
  const S8P3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "Custom Button Theme",

      theme: ThemeData(
        primarySwatch: Colors.green,

        // Custom ElevatedButton Theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,

            // Rounded corners
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),

            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),

            textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      home: const ButtonHomePage(),
    );
  }
}

class ButtonHomePage extends StatelessWidget {
  const ButtonHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom Button Style")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Login")),

            const SizedBox(height: 20),

            ElevatedButton(onPressed: () {}, child: const Text("Register")),

            const SizedBox(height: 20),

            ElevatedButton(onPressed: () {}, child: const Text("Continue")),
          ],
        ),
      ),
    );
  }
}
