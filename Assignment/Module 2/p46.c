#include <stdio.h>

int main()
{
    int num, reverse = 0, digit;

    printf("Enter an integer: ");
    scanf("%d", &num);

    int temp = (num < 0) ? -num : num;

    while (temp != 0)
    {
        digit = temp % 10;
        reverse = reverse * 10 + digit;
        temp = temp / 10;
    }

    if (num < 0)
        reverse = -reverse;

    printf("Reversed number = %d\n", reverse);

    return 0;
}