/*
  => 1.Write a Dart function checkDiscountEligibility that takes a user's age as input and prints 'Eligible for student discount' 
  if the age is less than 22, otherwise prints 'No discount available'.
*/
import 'dart:io';

int checkDiscountEligibility() {
  stdout.write('Enter your age: ');
  int age = int.parse(stdin.readLineSync()!);
  return age;
}

void main() {
  int age = checkDiscountEligibility();

  if (age < 22) {
    print('Eligible for student discount');
  } else {
    print('No discount available');
  }
}
