/*
  => 4.Write a Dart program that takes a user's name and the number of items in their cart, then prints a personalized message 
  like 'Hi Priya, your cart has 3 items.' using string interpolation.<br><br><em><strong>Constraint:</strong> Do not use the '+' operator to 
  combine strings—use only string interpolation.</em>
*/
import 'dart:io';

void main() {
  stdout.write('Enter your name : ');
  String name = stdin.readLineSync().toString();
  stdout.write('Enter number of items you want to buy : ');
  int numofItems = int.parse(stdin.readLineSync().toString());

  print('Hi $name, your cart has $numofItems items.');
}
