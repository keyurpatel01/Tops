/*
  => 1.Create a Dart class called ProductUser with properties name and email, and a method displayInfo() that prints both properties.
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

void main() {
  ProductUser p = ProductUser('Keyur', 'Keyur01@gmail.com');
  p.displayInfo();
}
