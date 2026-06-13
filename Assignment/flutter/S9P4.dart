/*
  => 4.Refactor your main.dart code to group all user details (name, age, email) into a single UserProfile class with appropriate data types.
   Create an object of UserProfile, assign values, and print each property.
*/

class UserProflie {
  String name;
  int age;
  String email;
  UserProflie(this.name, this.age, this.email);
}

void main() {
  UserProflie u = UserProflie('Keyur', 20, 'keyur01@gmail.com');
  print("Name: ${u.name}");
  print("Age: ${u.age}");
  print("Email: ${u.email}");
}
