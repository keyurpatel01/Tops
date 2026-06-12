/*
    => Write a C++ program that accepts an array of integers, calculates the sum and average, and displays the results.
*/
#include <iostream>

using namespace std;

int main()
{

    int n, sum = 0;

    cout << "Enter the number of elements: ";

    cin >> n;

    int arr[n];

    cout << "Enter " << n << " integers:" << endl;

    for (int i = 0; i < n; i++)
    {

        cin >> arr[i];

        sum += arr[i];
    }

    double average = (double)sum / n;

    cout << "Sum = " << sum << endl;

    cout << "Average = " << average << endl;

    return 0;
}
