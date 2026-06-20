/*
  =>3.Create a static variable totalUsers in the ProductUser class that keeps track of how many ProductUser (and its subclasses) objects 
  have been created. Increment it in each constructor and print its value after creating three different users.
*/

class ProductUser {
  String name;
  String email;
  static int totalUser = 0;
  ProductUser(this.name, this.email) {
    totalUser++;
  }

  void displayInfo() {
    print('Name : $name');
    print('Email : $email');
  }
}

void main() {
  ProductUser p1 = ProductUser('Keyur', 'Keyur01@gmail.com');
  ProductUser p2 = ProductUser('Ram', 'Ram01@gmail.com');
  ProductUser p3 = ProductUser('Krishna', 'Krishna01@gmail.com');

  p1.displayInfo();
  p2.displayInfo();
  p3.displayInfo();
  print('Total User : ${ProductUser.totalUser}');
}
