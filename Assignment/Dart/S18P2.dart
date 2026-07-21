/*
  => 2.Write a Dart class called Movie with fields: title, genre, and releaseYear. Add a constructor, then create two Movie objects 
  for any Bollywood or Hollywood films you love and display their info using print().
*/
class Movie {
  String title;
  String genre;
  double releaseYear;

  Movie(this.title, this.genre, this.releaseYear);
  @override
  String toString() {
    return 'Title: $title\ngenre: $genre\nRelease Year: $releaseYear\n';
  }
}

void main() {
  Movie Bollywood = Movie('3 Idiots', "Comedy,Drama", 2009);
  print('BollyWood');
  print(Bollywood);
  Movie Hollywood = Movie("Inception", "Sci-Fi/Action", 2010);
  print('HollyWood');
  print(Hollywood);
}
