/*
  => 2.Given a Map representing a Flipkart product (with keys: 'title', 'price', 'inStock'), write Dart code to update the 'inStock' value to false 
  and print the updated Map.
*/
void main() {
  Map<String, dynamic> flipkartProduct = {
    'title': 'T-shirt',
    'price': 799,
    'inStock': true,
  };
  print(flipkartProduct);

  flipkartProduct.update('inStock', (value) => false);
  print(flipkartProduct);
}
