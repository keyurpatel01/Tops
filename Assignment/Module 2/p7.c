#include <stdio.h>

int main()
{
    float b, h, area;

    printf("Enter the base of the triangle: ");
    scanf("%f", &b);

    printf("Enter the height of the triangle: ");
    scanf("%f", &h);

    area = 0.5 * b * h;

    printf("Area of Triangle = %.2f\n", area);

    return 0;
}