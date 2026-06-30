#include <stdio.h>

int main()
{
    int i, j, rows, num = 1;

    printf("Enter number of rows: ");
    scanf("%d", &rows);

    /*
    1
    10
    101
    1010
    10101
    */

    for (i = 1; i <= rows; i++)
    {
        for (j = 1; j <= i; j++)
        {
            if (j % 2 == 1)
                printf("1");
            else
                printf("0");
        }
        printf("\n");
    }

    /*

    A
    BC
    DEF
    GHIJ
    KLMNO
    */
    // {
    //     char ch = 'A';
    //     ;

    //     for (i = 1; i <= rows; i++)
    //     {
    //         for (j = 1; j <= i; j++)
    //         {
    //             printf("%c", ch);
    //             ch++;
    //         }
    //         printf("\n");
    //     }

    //     return 0;
    // }

    // return 0;

    /*
     *
     ***
     *****
     *******
     *********
     */
    // {

    //     for (i = 1; i <= rows; i++)
    //     {

    //         for (j = 1; j <= rows - i; j++)
    //         {
    //             printf(" ");
    //         }

    //         for (j = 1; j <= (2 * i - 1); j++)
    //         {
    //             printf("*");
    //         }

    //         printf("\n");
    //     }

    //     return 0;
    // }

    /*
     *
     **
     ***
     ****
     *****
     */
    // {

    //     for (i = 1; i <= 5; i++)
    //     {
    //         for (j = 1; j <= i; j++)
    //         {
    //             printf("*");
    //         }
    //         printf("\n");
    //     }

    //     return 0;
    // }

    /*
1
2 3
4 5 6
7 8 9 10
11 12 13 14 15
*/
    // {

    //     for (i = 1; i <= rows; i++)
    //     {
    //         for (j = 1; j <= i; j++)
    //         {
    //             printf("%d ", num);
    //             num++;
    //         }
    //         printf("\n");
    //     }

    //     return 0;
    // }

    /*
    A
    AB
    ABC
    ABCD
    ABCDE
    */

    // {

    //     for (i = 1; i <= rows; i++)
    //     {
    //         for (j = 0; j < i; j++)
    //         {
    //             printf("%c", 'A' + j);
    //         }
    //         printf("\n");
    //     }

    //     return 0;
    // }
}
