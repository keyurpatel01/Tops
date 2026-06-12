/*
    => Write a C++ program that takes a student’s marks as input and calculates the grade based on if-else conditions.
*/

#include <iostream>
using namespace std;

int main()
{
    int marks;

    cout << "Enter student's marks: ";
    cin >> marks;

    if (marks >= 90)
        cout << "Grade A";
    else if (marks >= 80)
        cout << "Grade B";
    else if (marks >= 70)
        cout << "Grade C";
    else if (marks >= 60)
        cout << "Grade D";
    else
        cout << "Grade F";

    return 0;
}