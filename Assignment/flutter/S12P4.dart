/*
  => 4.Write a Dart program that takes a list of cricket scores (e.g., [45, 100, 78, 23, 56]) and uses a loop to count how many scores are above 50, 
  then print the total number of 'half-centuries' like an IPL scoreboard.
*/
void main() {
  List<int> cricketScore = [45, 100, 78, 23, 56];
  int halfCenturies = 0;

  for (var score in cricketScore) {
    if (score > 50) {
      halfCenturies++;
    }
  }
  print('IPL Scoreboard');
  print('Total Half-Centuries: $halfCenturies');
}
