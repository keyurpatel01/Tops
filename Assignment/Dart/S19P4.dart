/*
  => 4.Build a CustomerUser class that extends ProductUser and adds a method placeOrder(productName) which prints a message like 
  'Order placed for {productName} by {name}'. Use the this keyword to access the user's name.
*/

class ProductUser {
  String name;

  ProductUser(this.name);
}

class CustomerUser extends ProductUser {
  CustomerUser(String name) : super(name);

  void placeOrder(String productName) {
    print('Order placed for $productName by ${this.name}');
  }
}

void main() {
  CustomerUser user = CustomerUser("Keyur");

  user.placeOrder("iPhone");
}
