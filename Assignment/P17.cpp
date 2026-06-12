/*
    => Write a C++ program to check if a given string is a palindrome (reads the same forwards and backwards).
*/
#include <iostream>

#include <string>

using namespace std;

int main()
{

    string str, rev = "";

    cout << "Enter a string: ";

    cin >> str;

    // Reverse the string

    for (int i = str.length() - 1; i >= 0; i--)
    {

        rev += str[i];
    }

    // Check palindrome

    if (str == rev)
    {

        cout << str << " is a palindrome." << endl;
    }
    else
    {

        cout << str << " is not a palindrome." << endl;
    }

    return 0;
}