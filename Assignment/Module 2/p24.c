#include <stdio.h>
#include <string.h>

int main()
{
    char str[100], rev[100];
    int i, len, j = 0;

    printf("Enter a string: ");
    scanf("%s", str);

    len = strlen(str);

    for (i = len - 1; i >= 0; i--)
    {
        rev[j] = str[i];
        j++;
    }
    rev[j] = '\0';

    printf("Reversed string = %s\n", rev);

    if (strcmp(str, rev) == 0)
        printf("String is Palindrome\n");
    else
        printf("String is Not Palindrome\n");

    return 0;
}