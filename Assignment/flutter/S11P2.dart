/*
  => 2.Build a Dart function called getDeliveryCharge that takes the order value as input and uses if-else to apply a delivery charge: 
  if the order is below 200, charge 50; if between 200 and 500, charge 20; if above 500, delivery is free. Print the final delivery charge.
*/
import 'dart:io';

void getDeliveryCharge(double orderValue) {
  if (orderValue < 200) {
    print('Delivery charge : 50₹');
  } else if (orderValue <= 500) {
    print('Delivery charge : 20₹');
  } else {
    print('Free Delivery');
  }
}

void main() {
  print('Enter the order value : ');
  double order = double.parse(stdin.readLineSync().toString());
  getDeliveryCharge(order);
}
