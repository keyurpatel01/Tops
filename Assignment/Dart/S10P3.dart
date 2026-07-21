/*
  => 3.Build a Dart snippet that simulates a Flipkart-style cart: given three product prices (as variables), 
  calculate and print the total, then apply a 10% discount if the total is above 1000. Display the final amount with a message using string 
  interpolation.<br><br><em><strong>Hint:</strong> Use arithmetic and relational operators to check the discount condition.</em>
*/
void main() {
  double product1Price = 450.0;
  double product2Price = 350.0;
  double product3Price = 400.0;

  double total = product1Price + product2Price + product3Price;
  double finalAmount = total;

  if (total > 1000) {
    finalAmount = total - (total * 0.10);
  }
  print('Total : $total');
  print('Final amount after 10% discount : $finalAmount');
}
