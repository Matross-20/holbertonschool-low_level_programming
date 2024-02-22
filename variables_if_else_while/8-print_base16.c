#include <stdio.h>
/**
 *main -  prints all the numbers of base 16 in lowercase
 *Return: end product of the string
 */
int main(void)
{
char current_char;

for (int i = 0; i < 10; i++)
{
current_char = '0' + i;
putchar(current_char);
}

for (int i = 0; i < 6; i++)
{
current_char = 'a' + i;
putchar(current_char);
}
putchar('\n');

return (0);
}
