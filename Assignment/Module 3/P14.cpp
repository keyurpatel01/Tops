/*
    => Write a program that demonstrates the difference between local and global variables in C++. Use functions to show scope.
*/
#include <iostream>

using namespace std;

// Global variable

int num = 100;

void display()
{

    // Local variable

    int num = 50;

    cout << "Local variable: " << num << endl;
    cout << "Global variable: " << ::num << endl;
}

int main()
{

    display();

    cout << "Global variable in main: " << num << endl;

    return 0;
}