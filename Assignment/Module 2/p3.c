#include <stdio.h>

int main()
{
    int num1, num2;

    printf("Enter first integer: ");
    scanf("%d", &num1);

    printf("Enter second integer: ");
    scanf("%d", &num2);

    printf("\nArithmetic Operations:\n");
    printf("%d + %d = %d\n", num1, num2, num1 + num2);
    printf("%d - %d = %d\n", num1, num2, num1 - num2);
    printf("%d * %d = %d\n", num1, num2, num1 * num2);
    printf("%d / %d = %d\n", num1, num2, num1 / num2);
    printf("%d %% %d = %d\n", num1, num2, num1 % num2);

    printf("\nRelational Operations:\n");
    printf("%d == %d : %d\n", num1, num2, num1 == num2);
    printf("%d != %d : %d\n", num1, num2, num1 != num2);
    printf("%d > %d : %d\n", num1, num2, num1 > num2);
    printf("%d < %d : %d\n", num1, num2, num1 < num2);
    printf("%d >= %d : %d\n", num1, num2, num1 >= num2);
    printf("%d <= %d : %d\n", num1, num2, num1 <= num2);

    printf("\nLogical Operations:\n");
    printf("(%d && %d) = %d\n", num1, num2, num1 && num2);
    printf("(%d || %d) = %d\n", num1, num2, num1 || num2);
    printf("!(%d) = %d\n", num1, !num1);

    return 0;
}