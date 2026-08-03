/*
  Simulate a Flipkart-style payment process in Dart: create a function processPayment() that 
  randomly throws an exception to simulate payment failure. Use try-catch to display either 
  'Payment Successful' or 'Payment Failed: [error message]'.

  Constraint: Use Random().nextBool() to decide if the payment fails.
*/

import 'dart:math';

String processPayment() {
  bool paymentFailed = Random().nextBool();

  if (paymentFailed) {
    throw Exception("Payment declined due to server issue");
  }

  return "Payment Successful";
}

void main() {
  try {
    String result = processPayment();

    print(result);
  } catch (e) {
    print("Payment Failed: $e");
  }
}
