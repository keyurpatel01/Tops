/*
   => Write a C++ program that demonstrates the use of variables and constants. Create variables of different data types and perform operations on them.
*/
#include <iostream>
using namespace std;

int main()
{
    int age = 20;
    float salary = 25000.50;
    char grade = 'A';

    const float PI = 3.14;

    cout << "Age = " << age << endl;
    cout << "Salary = " << salary << endl;
    cout << "Grade = " << grade << endl;
    cout << "PI = " << PI << endl;

    age = 21;

    cout << "Updated Age = " << age << endl;

    return 0;
}