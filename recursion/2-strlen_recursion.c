#include "main.h"

/**
 *_strlen_recursion - main fontion that returns the length of a string
 *@s: it's first array
 *
 *Return: return the total of byte
 */

int _strlen_recursion(char *s)
{
	int i = 0;

	if (s[i] != '\0')
	{
		return (1 + _strlen_recursion(s + 1));
	}
	return (0);
}
