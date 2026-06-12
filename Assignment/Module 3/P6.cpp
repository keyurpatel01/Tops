/*
    => Write a C++ program that performs both implicit and explicit type conversions and prints the results.
*/
#include <iostream>
using namespace std;

int main()
{
    // Implicit Type Conversion
    int num = 10;
    double result = num;

    cout << "Implicit Conversion:" << endl;
    cout << "Integer value = " << num << endl;
    cout << "Converted to Double = " << result << endl;

    // Explicit Type Conversion
    double price = 99.99;
    int newPrice = (int)price;

    cout << "\nExplicit Conversion:" << endl;
    cout << "Double value = " << price << endl;
    cout << "Converted to Integer = " << newPrice << endl;

    return 0;
}