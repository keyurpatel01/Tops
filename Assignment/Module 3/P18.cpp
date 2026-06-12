/*
    => Write a C++ program that defines a class Calculator with functions for addition, subtraction, multiplication, and division.
    Create objectsto use these functions
*/
#include <iostream>

using namespace std;

class Calculator
{

public:
    // Addition

    int add(int a, int b)
    {

        return a + b;
    }

    // Subtraction

    int subtract(int a, int b)
    {

        return a - b;
    }

    // Multiplication

    int multiply(int a, int b)
    {

        return a * b;
    }

    // Division

    float divide(int a, int b)
    {

        if (b == 0)
        {

            cout << "Division by zero is not allowed!" << endl;

            return 0;
        }

        return (float)a / b;
    }
};

int main()
{

    Calculator calc;
    int num1, num2;
    cout << "Enter two numbers: ";
    cin >> num1 >> num2;
    cout << "Addition: " << calc.add(num1, num2) << endl;
    cout << "Subtraction: " << calc.subtract(num1, num2) << endl;
    cout << "Multiplication: " << calc.multiply(num1, num2) << endl;
    cout << "Division: " << calc.divide(num1, num2) << endl;

    return 0;
}
