#include <stdio.h>

int main()
{
    int num;

    printf("Enter an integer: ");
    scanf("%d", &num);

    // Even or Odd
    if (num % 2 == 0)
        printf("Even number\n");
    else
        printf("Odd number\n");

    // Positive, Negative or Zero
    if (num > 0)
        printf("Positive number\n");
    else if (num < 0)
        printf("Negative number\n");
    else
        printf("Zero\n");

    // Multiple of both 3 and 5
    if (num % 3 == 0 && num % 5 == 0)
        printf("Multiple of both 3 and 5\n");
    else
        printf("Not a multiple of both 3 and 5\n");

    return 0;
}