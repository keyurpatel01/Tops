/*
  Refactor your Column or Row layout to remove all hard-coded pixel values for padding, margin, 
  height, or width. Replace them with MediaQuery or use SizedBox/Spacer for flexible spacing.
  <br><br><em><strong>Constraint:</strong> Your layout should still look visually balanced on 
  different screen sizes.</em>
*/
import 'package:flutter/material.dart';

class S4P5 extends StatelessWidget {
  const S4P5({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: screenWidth * 0.8,
          padding: EdgeInsets.all(screenWidth * 0.05),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF1DB954), Color(0xFF14833B)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(screenWidth * 0.05),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(4, 6),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Favorite Hits",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: screenHeight * 0.02),

              Text(
                "25 Songs",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: screenWidth * 0.045,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
