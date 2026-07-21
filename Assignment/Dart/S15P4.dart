/*
  => 4.Create a Dart set called myPlaylist containing 4 unique song names (as strings), including one duplicate song. 
  Print the set and explain in a comment what happened to the duplicate.<br><br><em><strong>Hint:</strong> Sets automatically 
  prevent duplicates.</em>
*/
void main() {
  Set<String> myPlaylist = {
    "Midnight Echo",
    "Golden Hour",
    "Chaos Theory",
    "Liquid Dreams", //Duplicate
    "Ultraviolet",
  };
  print(myPlaylist);
}
