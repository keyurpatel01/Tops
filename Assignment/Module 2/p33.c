#include <stdio.h>

int main()
{
    char str[100];
    int i = 0, len = 0, flag = 1;

    printf("Enter a string: ");
    scanf("%s", str);

    // Find length manually
    while (str[len] != '\0')
    {
        len++;
    }

    // Check palindrome
    for (i = 0; i < len / 2; i++)
    {
        if (str[i] != str[len - i - 1])
        {
            flag = 0;
            break;
        }
    }

    if (flag == 1)
        printf("String is Palindrome\n");
    else
        printf("String is Not Palindrome\n");

    return 0;
}