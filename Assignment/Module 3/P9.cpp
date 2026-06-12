/*
    => Write a C++ program that asks the user to guess a number between 1 and 100.
    The program should provide hints if the guess is too high or too low. Use loops to allow the user multiple attempts.
*/
#include <iostream>
using namespace std;

int main()
{
    int secretNumber = 50;
    int guess;

    cout << "Guess a number between 1 and 100" << endl;

    while (true)
    {
        cout << "Enter your guess: ";
        cin >> guess;

        if (guess > secretNumber)
            cout << "Too High" << endl;
        else if (guess < secretNumber)
            cout << "Too Low" << endl;
        else
        {
            cout << "Congratulations You guessed the correct number." << endl;
            break;
        }
    }

    return 0;
}