/*
    => Write a C++ program that demonstrates arithmetic, relational, logical, and bitwise operators.
    Perform operations using each type of operator and display the results.
*/
#include <iostream>
using namespace std;

int main()
{
    int a = 10, b = 5;

    // Arithmetic Operators
    cout << "Arithmetic Operators" << endl;
    cout << "a + b = " << a + b << endl;
    cout << "a - b = " << a - b << endl;
    cout << "a * b = " << a * b << endl;
    cout << "a / b = " << a / b << endl;

    // Relational Operators
    cout << "\nRelational Operators" << endl;
    cout << "a > b = " << (a > b) << endl;
    cout << "a < b = " << (a < b) << endl;
    cout << "a == b = " << (a == b) << endl;

    // Logical Operators
    cout << "\nLogical Operators" << endl;
    cout << "(a > b && b > 0) = " << (a > b && b > 0) << endl;
    cout << "(a < b || b > 0) = " << (a < b || b > 0) << endl;

    // Bitwise Operators
    cout << "\nBitwise Operators" << endl;
    cout << "a & b = " << (a & b) << endl;
    cout << "a | b = " << (a | b) << endl;
    cout << "a ^ b = " << (a ^ b) << endl;

    return 0;
}