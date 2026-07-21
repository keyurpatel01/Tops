/*
  =>1.Create a Dart function named isValidUsername that takes a String and returns true if it is at least 6 characters long 
  and contains no spaces, otherwise returns false.
*/
bool isValidUsername(String userName) =>
    userName.length >= 6 && !userName.contains(" ");

void main() {
  print(isValidUsername("KeyurPatel"));
  print(isValidUsername("KeyurPatel"));
  print(isValidUsername("Keyur Patel"));
}
