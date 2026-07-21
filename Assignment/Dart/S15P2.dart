/*
  => 2.Add a new restaurant to favRestaurants using the add() method, then update the second restaurant's name to something else using its index.
   Print the updated list after each change.
*/
void main() {
  List<String> favRestaurants = ['Barbeque Nation', "Domino's", 'Hocco'];
  print(favRestaurants);
  
  //add new restaurant
  favRestaurants.add('Spice Villa');
  print(favRestaurants);

  //update restaurant
  favRestaurants[1] = "Nini's Kitchen";
  print(favRestaurants);
}
