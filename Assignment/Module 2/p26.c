#include <stdio.h>

int main()
{
    int n, i;

    printf("Enter how many numbers you want to store: ");
    scanf("%d", &n);

    int arr[n];

    printf("Enter %d numbers:\n", n);
    for (i = 0; i < n; i++)
    {
        scanf("%d", &arr[i]);
    }

    printf("Array elements are:\n");
    for (i = 0; i < n; i++)
    {
        printf("%d ", arr[i]);
    }

    return 0;
}