#include <stdio.h>

/**
 * main - print numbers
 * Return: return integers
 */

int main(void)
{
	char num = '0';

	while (num <= '9')
	{
		putchar(num);
		num++;
	}

	putchar('\n');
	return (0);
}
