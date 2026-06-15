/*
  => 5.Refactor this Dart code by extracting the repeated calculation into a separate function: three different Zomato order 
  totals are each calculated as item price + 5% service charge. Your function should be named addServiceCharge and take the price as a parameter.
  <br><br><em><strong>Hint:</strong> Replace all repeated calculation lines with calls to your new function.</em>
*/
double addServiceCharge(double price) {
  return price + (price * 0.05);
}

void main() {
  print("Order 1 Total : ${addServiceCharge(200)}");
  print("Order 2 Total : ${addServiceCharge(300)}");
  print("Order 3 Total : ${addServiceCharge(500)}");
}
