/*
  => 2.Write a reusable Dart function called calculateDiscountedPrice that accepts the original price and discount percentage, 
  and returns the final price after applying the discount. Test it with a Flipkart-style scenario: original price ₹1500, discount 20%.
*/
double calculateDiscountedPrice(double originalPrice, double discount) {
  double finalPrice = originalPrice - (originalPrice * discount / 100);
  return finalPrice;
}

void main() {
  double originalPrice = 1500;
  double discountPercentage = 20;

  print("Original Price: ₹$originalPrice");
  print(
    "Final Price after $discountPercentage% discount : ₹${calculateDiscountedPrice(originalPrice, discountPercentage)}",
  );
}
