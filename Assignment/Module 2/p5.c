#include <stdio.h>

int main()
{
    float a, area;

    printf("Enter the side of the square: ");
    scanf("%f", &a);

    area = a * a;

    printf("Area of Square = %.2f\n", area);

    return 0;
}