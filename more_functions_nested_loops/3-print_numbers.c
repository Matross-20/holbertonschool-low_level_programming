#include "main.h"

/**
 * print_numbers - print numbers from 1 up to 9
 * @void: no parameter
 */

void print_numbers(void)
{
	int n = 0;
	char cnum;

	for (n = 0; n <= 9; n++)
	{
		cnum = n + '0';
		_putchar(cnum);
	}
	_putchar('\n');
}
