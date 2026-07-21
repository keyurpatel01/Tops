/*
  =>5.Create a Dart class called Playlist representing a Spotify playlist with fields: playlistName and songCount. 
  Write a function addSong() that increases songCount by 1. Create a Playlist object, add 3 songs using addSong(), and print the final songCount.
*/
class Playlist {
  String playlistName;
  int songCount = 0;
  Playlist(this.playlistName);

  void addSong() {
    songCount++;
  }
}

void main() {
  Playlist playlist = Playlist('Jay Dwarkadhish');
  playlist.addSong();
  playlist.addSong();
  playlist.addSong();
  print('Final Song Count: ${playlist.songCount}');
}
