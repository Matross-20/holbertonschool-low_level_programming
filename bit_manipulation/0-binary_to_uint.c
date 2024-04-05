#include <stdlib.h>

/**
 *binary_to_uint -  converts a binary number to an unsigned int
 *@b: number to convert
 *Return: the coverted number
 */

unsigned int binary_to_uint(const char *b)
{
	unsigned int i = 0;

	if (!b)
	{
		return (0);
	}

	while (*b != '\0')
	{
		i <<= 1;

		if (*b == '1')
		{
			i |= 1;
		}
		else if (*b != '0')
		{
			return (0);
		}
		b++;
	}
	return (i);
}
