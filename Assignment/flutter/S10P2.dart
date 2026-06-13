/*
  =>2.Write a Dart function checkDiscountEligibility that takes a user's order amount and returns true if the amount is greater than or equal to 500,
   otherwise false. Use a logical operator and print a message like 'You are eligible for a discount!' or 'No discount available.' 
   using string interpolation.
*/

bool checkDiscountEligibility(double amount) {
  return amount >= 500;
}

void main() {
  double orderAmount = 100;
  bool isEligible = checkDiscountEligibility(orderAmount);

  isEligible
      ? print('You are eligible for a discount!')
      : print('No discount available');
}
