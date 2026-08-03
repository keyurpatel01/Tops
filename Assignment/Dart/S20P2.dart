/*
  Build a simple Dart function getOrderStatus() that simulates checking a Zomato order status 
  using Future.delayed for 3 seconds, then returns 'Order Delivered'. Call this function using 
  async/await and print the result.
*/

Future<String> getOrderStatus() async {
  await Future.delayed(Duration(seconds: 3));

  return "Order Delivered";
}

void main() async {
  String status = await getOrderStatus();

  print(status);
}
