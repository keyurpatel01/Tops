#include <stdio.h>

int main()
{
    int num, i, range;

    printf("Enter a number: ");
    scanf("%d", &num);

    printf("Enter range (1 to N): ");
    scanf("%d", &range);

    printf("Multiplication Table of %d up to %d:\n", num, range);

    for (i = 1; i <= range; i++)
    {
        printf("%d x %d = %d\n", num, i, num * i);
    }

    return 0;
}