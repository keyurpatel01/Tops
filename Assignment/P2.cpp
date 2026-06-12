/*
    2. Basic Input/Output
    o Write a C++ program that accepts user input for their name and age and then displays a personalized greeting.
    o Objective: Practice input/output operations using cin and cout.
*/

#include <iostream>
#include <string>
using namespace std;
int main()
{
    string name;
    int age;
    cout << "Enter your name : ";
    cin >> name;
    cout << "Enter your age : ";
    cin >> age;
    cout << "Hello " << name << endl;
    cout << "You are " << age << " Years old" << endl;
    return 0;
}