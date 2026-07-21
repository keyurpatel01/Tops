/*
  => 2.Extend ProductUser to create a SellerUser class with an additional property shopName and override the displayInfo() method 
  to also print the shop name.<br><br><em><strong>Hint:</strong> Use the super keyword to call the base class method inside your override.</em>
*/

class ProductUser {
  String name;
  String email;
  ProductUser(this.name, this.email);

  void displayInfo() {
    print('Name : $name');
    print('Email : $email');
  }
}

class SellerUser extends ProductUser {
  String shopeName;

  SellerUser(String name, String email, this.shopeName) : super(name, email);
  @override
  void displayInfo() {
    super.displayInfo();
    print('Shop Name: $shopeName');
  }
}

void main() {
  SellerUser seller = SellerUser('Keyur', 'keyur01@gmail.com', 'Krishna Store');

  seller.displayInfo();
}
