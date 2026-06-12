/*
    => Create a class BankAccount with data members like balance and member functions like deposit and withdraw.
    Implement encapsulation by keeping the data members private.
*/
#include <iostream>

using namespace std;

class BankAccount
{
private:
    double balance; // Private data member
public:
    // Constructor
    BankAccount()
    {
        balance = 0;
    }

    // Deposit function

    void deposit(double amount)
    {

        if (amount > 0)
        {

            balance += amount;

            cout << "Deposited: " << amount << endl;
        }
        else
        {

            cout << "Invalid deposit amount!" << endl;
        }
    }

    // Withdraw function
    void withdraw(double amount)
    {

        if (amount > balance)
        {

            cout << "Insufficient balance!" << endl;
        }
        else
        {

            balance -= amount;

            cout << "Withdrawn: " << amount << endl;
        }
    }

    // Display balance

    void displayBalance()
    {

        cout << "Current Balance: " << balance << endl;
    }
};

int main()
{

    BankAccount account; // Create object

    account.deposit(5000);

    account.withdraw(2000);

    account.displayBalance();

    return 0;
}