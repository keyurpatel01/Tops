/*
  => 4.Refactor your Movie class so that genre is optional (can be null) and releaseYear has a default value of 2024 if not provided. 
  Test by creating a Movie object with only the title and print its details.<br><br><em><strong>Hint:</strong> Use named parameters with 
  default values and nullability in the constructor.</em>
*/
class Movie {
  String? genre;
  int releasYear;
  String title;
  Movie({required this.title, this.releasYear = 2024, this.genre});
  @override
  String toString() {
    return 'Title : $title Releas Year : $releasYear Genre : $genre';
  }
}

void main() {
  Movie movie = Movie(title: 'Pushpa-2');
  print(movie);
}
