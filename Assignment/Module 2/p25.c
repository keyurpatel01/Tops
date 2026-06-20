#include <stdio.h>

int main()
{
    int arr1D[5];
    int i, j, sum = 0;

    // 1D Array
    printf("Enter 5 integers for 1D array:\n");
    for (i = 0; i < 5; i++)
    {
        scanf("%d", &arr1D[i]);
    }

    printf("1D Array elements:\n");
    for (i = 0; i < 5; i++)
    {
        printf("%d ", arr1D[i]);
    }

    // 2D Array (3x3 Matrix)
    int matrix[3][3];

    printf("\n\nEnter 9 elements for 3x3 matrix:\n");
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
        {
            scanf("%d", &matrix[i][j]);
        }
    }

    // Display matrix and calculate sum
    printf("\nMatrix:\n");
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
        {
            printf("%d ", matrix[i][j]);
            sum += matrix[i][j];
        }
        printf("\n");
    }

    printf("\nSum of all elements in matrix = %d\n", sum);

    return 0;
}