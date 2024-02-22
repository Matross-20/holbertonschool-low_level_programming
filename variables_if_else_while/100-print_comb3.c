#include <stdio.h>

/**
 *main - prints all combinations of double digits
 *Return: end product of the string
 */
int main(void)
{
int num;
int no;
for (num = 0; num <= 99; num++)
{
for (no = num + 1; no <= 99; no++)
{
putchar((no / 10) + '0');
putchar((no % 10) + '0');
if (no < 98 || no < 99)
{
putchar(',');
putchar(' ');
}
}
}
putchar('\n');
return (0);
}

