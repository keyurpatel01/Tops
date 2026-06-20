#include <stdio.h>

int main()
{
    int n, i = 1, sum = 0;

    printf("Enter a number: ");
    scanf("%d", &n);

    while (i <= n)
    {
        sum = sum + i;
        i++;
    }

    printf("Sum of natural numbers from 1 to %d = %d\n", n, sum);

    return 0;
}