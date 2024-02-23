#include "main.h"

/**
 *print_alphabet_x10 - name of function;
 *Return: end of function
 */
void print_alphabet_x10(void)
{
char c;
int pat = 0;
while (pat <= 9)
{
for (c = 'a'; c <= 'z'; c++)
{
_putchar(c);
}
pat++;
_putchar('\n');
}
}
