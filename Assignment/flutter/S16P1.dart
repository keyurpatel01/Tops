/*
  => 1.Create a Dart Map called foodItem with keys 'name', 'price', and 'category' to represent a Zomato menu item, and print 
  each value using its key.
*/
void main() {
  Map<String, dynamic> foodItem = {
    'name': 'Paneer Tikka Pizza',
    'price': 299,
    'category': 'Pizza',
  };
  print('name : ${foodItem['name']}');
  print('price : ${foodItem['price']}');
  print('category : ${foodItem['category']}');
}
