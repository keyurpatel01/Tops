#include <stdio.h>

int main()
{
    float a, area;

    printf("Enter the side of the cube: ");
    scanf("%f", &a);

    area = 6 * a * a;

    printf("Surface Area of Cube = %.2f\n", area);

    return 0;
}