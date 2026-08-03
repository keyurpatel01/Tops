/*
  Given a code snippet where the same styled button code is repeated in multiple places, refactor
   the code to extract a reusable AppButton widget that takes the button text and onPressed 
   callback as parameters.<br><br><em><strong>Constraint:</strong> Your AppButton widget should 
   support customizing the background color via a parameter.</em>

*/
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color backgroundColor;

  const AppButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,

      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,

        foregroundColor: Colors.white,

        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),

      child: Text(
        buttonText,

        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class S9P4 extends StatelessWidget {
  const S9P4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("App Button Example")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            AppButton(
              buttonText: "Login",

              backgroundColor: Colors.blue,

              onPressed: () {
                print("Login Clicked");
              },
            ),

            const SizedBox(height: 20),

            AppButton(
              buttonText: "Register",

              backgroundColor: Colors.green,

              onPressed: () {
                print("Register Clicked");
              },
            ),

            const SizedBox(height: 20),

            AppButton(
              buttonText: "Delete",

              backgroundColor: Colors.red,

              onPressed: () {
                print("Delete Clicked");
              },
            ),
          ],
        ),
      ),
    );
  }
}
