#include <stdio.h>

void joinStrings(char str1[], char str2[], char result[])
{
    int i = 0, j = 0;

    // Copy first string
    while (str1[i] != '\0')
    {
        result[j] = str1[i];
        i++;
        j++;
    }

    i = 0;

    // Copy second string
    while (str2[i] != '\0')
    {
        result[j] = str2[i];
        i++;
        j++;
    }

    result[j] = '\0'; // End string
}

int main()
{
    char str1[100], str2[100], result[200];

    printf("Enter first string: ");
    scanf("%s", str1);

    printf("Enter second string: ");
    scanf("%s", str2);

    // Function call
    joinStrings(str1, str2, result);

    printf("Joined String = %s\n", result);

    return 0;
}