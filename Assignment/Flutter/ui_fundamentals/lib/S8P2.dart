/*
  Add a custom font (such as 'Poppins' or 'Montserrat') to your Flutter app and update your 
  ThemeData to use this font for all text in the app.<br><br><em><strong>Hint:</strong> Add the 
  font files to your assets, update pubspec.yaml, and set the fontFamily in ThemeData.</em>

*/

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class S8P2 extends StatelessWidget {
  const S8P2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "Custom Font App",

      // Global ThemeData
      theme: ThemeData(
        primarySwatch: Colors.purple,

        // Apply Poppins font globally
        fontFamily: "Poppins",

        textTheme: TextTheme(
          titleLarge: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),

          bodyLarge: GoogleFonts.poppins(fontSize: 18),

          bodyMedium: GoogleFonts.poppins(fontSize: 16),
        ),
      ),

      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Poppins Theme App")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome to My Music App",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            const Text(
              "This entire app uses Poppins font.",
              style: TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 30),

            ElevatedButton(onPressed: () {}, child: const Text("Play Song")),
          ],
        ),
      ),
    );
  }
}
