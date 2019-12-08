#include <stdio.h>
extern int mul_by_ten(short input);

int main()
{
    short i;

    mul_by_ten(1);

    for (i = 0; i < 100; i++)
    {
        printf("Line %d\n", i);
        printf("10 * %d = %d\n", i, mul_by_ten(i));
        printf("--------\n");
    }

    return 0;
}