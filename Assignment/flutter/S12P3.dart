/*
  => 3.Given a Dart map called movieRatings with 5 movie titles as keys and their ratings (out of 10) as values, use a for-in loop 
  to print each movie and its rating in the format 'Jawan: 8/10'.
*/
void main() {
  Map<String, int> movieRatings = {
    'Pushpa-2': 10,
    'KGF': 9,
    'Sultan': 8,
    'Rambo': 9,
    'ABCD-2': 8,
  };
  for (var movies in movieRatings.keys) {
    print("$movies : ${movieRatings[movies]}/10");
  }
}
