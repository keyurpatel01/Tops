/*
  Use ChatGPT or GitHub Copilot to generate Dart code for an async function that fetches cricket
  match scores after a 1.5-second delay and handles possible errors with try-catch.
*/

import 'dart:math';

Future<String> fetchCricketScores() async {
  await Future.delayed(Duration(milliseconds: 1500));

  // Simulating possible API error
  if (Random().nextBool()) {
    throw Exception("Unable to fetch match scores");
  }

  return "India vs Australia: India 180/5 (20 overs)";
}

void main() async {
  try {
    String score = await fetchCricketScores();

    print(score);
  } catch (e) {
    print("Error: $e");
  }
}
