/*
  Write a function processUser(User user) that accepts either a SellerUser or CustomerUser 
  object and calls displayInfo(). Demonstrate polymorphism by passing both types and showing the 
  correct method output.
*/

class User {
  String name;

  User(this.name);

  void displayInfo() {
    print("User Name: $name");
  }
}

class SellerUser extends User {
  SellerUser(String name) : super(name);

  @override
  void displayInfo() {
    print("Seller Name: ${this.name}");
  }
}

class CustomerUser extends User {
  CustomerUser(String name) : super(name);

  @override
  void displayInfo() {
    print("Customer Name: ${this.name}");
  }
}

// Polymorphism function
void processUser(User user) {
  user.displayInfo();
}

void main() {
  SellerUser seller = SellerUser("Keyur Seller");
  CustomerUser customer = CustomerUser("Keyur Customer");

  processUser(seller);
  processUser(customer);
}
