/*
    => Write a C++ program that defines functions for basic arithmetic operations (add, subtract, multiply, divide).
    The main function should call these based on user input.
*/
#include <iostream>

using namespace std;

int add(int a, int b)
{
    return a + b;
}

int subtract(int a, int b)
{
    return a - b;
}

int multiply(int a, int b)
{
    return a * b;
}

float divide(int a, int b)
{
    return (float)a / b;
}

int main()
{
    int num1, num2, choice;

    cout << "Enter two numbers: ";
    cin >> num1 >> num2;

    cout << "\n1. Add\n2. Subtract\n3. Multiply\n4. Divide\n";
    cout << "Enter your choice: ";
    cin >> choice;

    switch (choice)
    {
    case 1:
        cout << "Result = " << add(num1, num2);
        break;
    case 2:
        cout << "Result = " << subtract(num1, num2);
        break;
    case 3:
        cout << "Result = " << multiply(num1, num2);
        break;
    case 4:
        cout << "Result = " << divide(num1, num2);
        break;
    default:
        cout << "Invalid Choice";
    }

    return 0;
}