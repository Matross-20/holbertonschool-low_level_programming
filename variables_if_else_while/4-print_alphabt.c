#include <stdio.h>
/**
 * main - print alphabets without e and q
 * Return: string
 */

int main(void)
{
char letter = 'a';
while (letter <= 'z')
{
if (letter != 'e' && letter != 'q')
{
putchar(letter);
}
letter++;
}
putchar('\n');
return 0;
}
