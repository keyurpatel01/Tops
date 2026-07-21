/*
  => 5.Use ChatGPT to generate a Dart code snippet that asks the user for their favorite food from a list 
  ('Pizza', 'Burger', 'Dosa', 'Biryani'), then uses a switch-case to print a unique message for each food. Paste the generated code 
  into your Dart file and test it.<br><br><em><strong>Hint:</strong> Prompt ChatGPT with: 'Write a Dart function that takes a food name as input 
  and prints a special message for each using switch-case.'</em>
*/
import 'dart:io';

void showFoodMessage(String food) {
  switch (food) {
    case 'Pizza':
      print('Pizza: Cheesy and delicious');
      break;

    case 'Burger':
      print('Burger: A perfect fast-food choice');
      break;

    case 'Dosa':
      print('Dosa: Crispy and tasty South Indian food');
      break;

    case 'Biryani':
      print('Biryani: Rich in flavor and spices');
      break;

    default:
      print('Invalid input');
  }
}

void main() {
  stdout.write('Enter your favorite food (Pizza, Burger, Dosa, Biryani) : ');
  String food = stdin.readLineSync().toString();

  showFoodMessage(food);
}
