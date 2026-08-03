/*
  Create a Dart function fetchTrendingSongs() that returns a Future<String> after a 2-second 
  delay, simulating an API call to get trending songs for a music app like Spotify. Print 'Top 
  songs loaded!' after the Future completes.
*/

Future<String> fetchTrendingSongs() async {
  await Future.delayed(Duration(seconds: 2));

  return "Trending songs fetched successfully!";
}

void main() async {
  String songs = await fetchTrendingSongs();

  print(songs);
  print("Top songs loaded!");
}
