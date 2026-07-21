/*
  =>3.Build an arrow function in Dart named formatFollowers that takes an integer and returns a formatted string like YouTube: 
  1500 becomes '1.5K', 1200000 becomes '1.2M', and numbers below 1000 stay as-is.<br><br><em><strong>Hint:</strong> Use conditional logic
   to check the number's size and format accordingly.</em>
*/
String formatFollowers(int followers) => followers >= 1000000
    ? '${(followers / 1000000).toStringAsFixed(1)}M'
    : followers >= 1000
    ? '${(followers / 1000).toStringAsFixed(1)}K'
    : followers.toString();

void main() {
  print(formatFollowers(1500));
  print(formatFollowers(1200000));
}
