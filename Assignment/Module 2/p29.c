#include <stdio.h>

int main()
{
    int num;
    int *ptr;

    printf("Enter a number: ");
    scanf("%d", &num);

    ptr = &num; // Pointer stores address of num

    printf("Before modification: %d\n", num);

    *ptr = *ptr + 10;

    printf("After modification using pointer: %d\n", num);

    return 0;
}