/*
  => 1.Create a Dart class called Restaurant with fields name, cuisine, and rating. Add a constructor to initialize all fields,
   then create an object for a restaurant you like and print all its details.
*/
class Restaurant {
  String name;
  String cuisine;
  double rating;
  Restaurant(this.name, this.cuisine, this.rating);

  @override
  String toString() {
    return 'Name: $name\nCuisine: $cuisine\nRating: $rating\n';
  }
}

void main() {
  Restaurant res1 = Restaurant(
    'Charcoal',
    "Multicuisine, Indian, Tandoori",
    4.9,
  );
  print(res1);
}
