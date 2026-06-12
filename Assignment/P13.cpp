/*
    => Write a C++ program that calculates the factorial of a number using recursion.
*/
#include <iostream>
using namespace std;

int factorial(int n)
{
    if (n == 0 || n == 1)
        return 1;
    else
        return n * factorial(n - 1);
}

int main()
{
    int num;

    cout << "Enter a number: ";
    cin >> num;

    cout << "Factorial = " << factorial(num);

    return 0;
}