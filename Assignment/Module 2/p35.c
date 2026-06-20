#include <stdio.h>

int main()
{
    FILE *fp;
    char str[100];

    // Writing to file
    fp = fopen("sample.txt", "w");

    if (fp == NULL)
    {
        printf("File not created!\n");
        return 1;
    }

    printf("Enter a string to write in file: ");
    fgets(str, sizeof(str), stdin);

    fputs(str, fp);

    fclose(fp);
    printf("Data written successfully.\n");

    // Reading from file
    fp = fopen("sample.txt", "r");

    if (fp == NULL)
    {
        printf("File not found!\n");
        return 1;
    }

    printf("\nFile contents:\n");

    while (fgets(str, sizeof(str), fp) != NULL)
    {
        printf("%s", str);
    }

    fclose(fp);

    return 0;
}