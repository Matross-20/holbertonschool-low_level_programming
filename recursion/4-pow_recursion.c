#include "main.h"

/**
 *_pow_recursion - main fontion that returns the length of a string
 *@x: it's first array
 *@y: it's var
 *Return: return the total of byte
 */

int _pow_recursion(int x, int y)
{
	if (y < 0)
		return (-1);
	else if (y == 0)
		return (1);
	else
		return (x * _pow_recursion(x, y - 1));
}
