/*
    => Write a program that implements inheritance using a base class Person and derived classes Student and Teacher.
     Demonstrate reusability through inheritance.
*/
#include <iostream>

using namespace std;

// Base Class

class Person
{

protected:
    string name;

    int age;

public:
    void setPersonDetails(string n, int a)
    {

        name = n;

        age = a;
    }

    void displayPersonDetails()
    {

        cout << "Name: " << name << endl;

        cout << "Age: " << age << endl;
    }
};

// Derived Class: Student

class Student : public Person
{

private:
    int rollNo;

public:
    void setStudentDetails(string n, int a, int r)
    {

        setPersonDetails(n, a);

        rollNo = r;
    }

    void displayStudentDetails()
    {

        displayPersonDetails();

        cout << "Roll Number: " << rollNo << endl;
    }
};

// Derived Class: Teacher

class Teacher : public Person
{

private:
    string subject;

public:
    void setTeacherDetails(string n, int a, string s)
    {

        setPersonDetails(n, a);

        subject = s;
    }

    void displayTeacherDetails()
    {

        displayPersonDetails();

        cout << "Subject: " << subject << endl;
    }
};

int main()
{

    Student student;

    Teacher teacher;

    student.setStudentDetails("Rahul", 20, 101);

    teacher.setTeacherDetails("Mehta", 40, "Mathematics");

    cout << "Student Details:" << endl;

    student.displayStudentDetails();

    cout << "\nTeacher Details:" << endl;

    teacher.displayTeacherDetails();

    return 0;
}