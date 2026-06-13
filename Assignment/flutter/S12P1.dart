/*
  => 1.Create a Dart list named foodItems with 5 of your favorite Zomato dishes (as strings), then use a for loop to print each dish with its index 
  (e.g., '1. Biryani').
*/
void main() {
  List<String> footItems = ['Biryani', 'Pizza', 'Burger', 'Dosa'];
  for (int i = 0; i < footItems.length; i++) {
    print("${i + 1}. ${footItems[i]}");
  }
}
