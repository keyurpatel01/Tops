#include <stdio.h>

int main()
{
    int i, num;
    int evenCount = 0, oddCount = 0;
    int evenSum = 0, oddSum = 0;

    printf("Enter 10 numbers:\n");

    for (i = 1; i <= 10; i++)
    {
        scanf("%d", &num);

        if (num % 2 == 0)
        {
            evenCount++;
            evenSum += num;
        }
        else
        {
            oddCount++;
            oddSum += num;
        }
    }

    printf("\nEven numbers count = %d\n", evenCount);
    printf("Odd numbers count = %d\n", oddCount);
    printf("Sum of even numbers = %d\n", evenSum);
    printf("Sum of odd numbers = %d\n", oddSum);

    return 0;
}