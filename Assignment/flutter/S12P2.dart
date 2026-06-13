/*
  => 2.Use a while loop in Dart to simulate a Flipkart-style shopping cart: starting with a list of 4 product names, print each product 
  and remove it from the list one by one until the cart is empty.<br><br><em><strong>Hint:</strong> Use the removeAt(0) method to remove the
  first item in each iteration.</em>
*/
void main() {
  List<String> product = [
    'Mobile Phone',
    'Laptop',
    'Headphones',
    'Smart Watch',
  ];

  while (product.isNotEmpty) {
    print('Removing: ${product[0]}');
    product.removeAt(0);
  }

  print('Shopping cart is empty.');
}
