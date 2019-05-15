#include <stdio.h>
extern int mul_by_ten(short input);

int main()
{
    short i;

    for (i = 0; i < 10; i++)
    {
        printf("Line %d\n", i);
        printf("10 * %d = %d\n", i, mul_by_ten(i));
        printf("--------\n");
    }

    return 0;
}