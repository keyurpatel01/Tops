#include <stdio.h>

int main()
{
    int a, b, c;

    printf("Enter three numbers: ");
    scanf("%d %d %d", &a, &b, &c);

    // Largest
    if (a >= b && a >= c)
        printf("Largest = %d\n", a);
    else if (b >= a && b >= c)
        printf("Largest = %d\n", b);
    else
        printf("Largest = %d\n", c);

    // Smallest
    if (a <= b && a <= c)
        printf("Smallest = %d\n", a);
    else if (b <= a && b <= c)
        printf("Smallest = %d\n", b);
    else
        printf("Smallest = %d\n", c);

    return 0;
}