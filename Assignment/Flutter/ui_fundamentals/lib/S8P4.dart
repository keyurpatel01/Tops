/*
  Create a local style override for just one Text widget in your app so that it appears in bold
   red, even though the global theme sets a different color and weight for body text.<br><br><em>
   <strong>Hint:</strong> Use the style property of Text to override the theme.</em>

*/

import 'package:flutter/material.dart';

class S8P4 extends StatelessWidget {
  const S8P4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "Text Style Override",

      // Global Theme
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Colors.blue,
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
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
      appBar: AppBar(title: const Text("Style Override Example")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Uses global theme style
            const Text(
              "This text uses global theme",
              style: TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 20),

            // Local style override
            const Text(
              "This text is bold and red",
              style: TextStyle(
                color: Colors.red,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
