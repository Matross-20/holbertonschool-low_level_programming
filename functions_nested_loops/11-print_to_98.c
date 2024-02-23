#include "main.h"

/**
 *print_to_98 - print integer
 *@n: variable name
 */
void print_to_98(int n)
{
for (n = 0; n <= 98; n++)
{
_putchar((n % 10) + '0');
_putchar(',');
_putchar(' ');
}
}
