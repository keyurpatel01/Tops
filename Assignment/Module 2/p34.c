#include <stdio.h>

struct Student
{
    char name[50];
    int rollNo;
    float marks;
};

int main()
{
    struct Student s[3];
    int i;

    // Input details
    printf("Enter details of 3 students:\n");

    for (i = 0; i < 3; i++)
    {
        printf("\nStudent %d:\n", i + 1);

        printf("Enter name: ");
        scanf("%s", s[i].name);

        printf("Enter roll number: ");
        scanf("%d", &s[i].rollNo);

        printf("Enter marks: ");
        scanf("%f", &s[i].marks);
    }

    // Display details
    printf("\n--- Student Details ---\n");

    for (i = 0; i < 3; i++)
    {
        printf("\nStudent %d\n", i + 1);
        printf("Name: %s\n", s[i].name);
        printf("Roll No: %d\n", s[i].rollNo);
        printf("Marks: %.2f\n", s[i].marks);
    }

    return 0;
}