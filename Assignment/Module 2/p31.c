#include <stdio.h>

int main()
{
    char str[100];
    int i = 0, length = 0;

    printf("Enter a string: ");
    scanf("%s", str);

    // Calculate length manually
    while (str[i] != '\0')
    {
        length++;
        i++;
    }

    printf("Length of string = %d\n", length);

    return 0;
}