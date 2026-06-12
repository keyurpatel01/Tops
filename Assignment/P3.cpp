/*
   
    o Write two small programs: one using Procedural Programming (POP) to calculate the area of a rectangle, and another using Object-Oriented Programming (OOP) with a
    class and object for the same task.
    
*/

// Using POP:
// #include <iostream>
// using namespace std;
// int main()
// {
//     int length, width;
//     cout << "Enter length : ";
//     cin >> length;
//     cout << "Enter width : ";
//     cin >> width;

//     int area = length * width;
//     cout << "Area of Rectangle = " << area;
//     return 0;
// }

// Using OOP:
#include <iostream>
using namespace std;
class Rectangle
{
public:
    int length, width;

    void getData()
    {
        cout << "Enter length : ";
        cin >> length;
        cout << "Enter width : ";
        cin >> width;
    }
    void display()
    {
        cout << "Area of Rectangle = " << length * width;
    }
};
int main()
{
    Rectangle r;
    r.getData();
    r.display();
    return 0;
}
