#include <stdio.h>

int main()
{
    int arr[5];
    int i;

    // Input 5 numbers
    printf("Enter 5 numbers:\n");
    for (i = 0; i < 5; i++)
    {
        scanf("%d", &arr[i]);
    }

    // Display in reverse order
    printf("Numbers in reverse order:\n");
    for (i = 4; i >= 0; i--)
    {
        printf("%d ", arr[i]);
    }

    return 0;
}