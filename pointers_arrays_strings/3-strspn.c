#include "main.h"

/**
 * _strspn - gets the length of a prefix substring
 * @s: pointer to character
 * @accept: pointer to character
 * Return: unsigned integer
 */

unsigned int _strspn(char *s, char *accept)
{
	unsigned int count = 0, x, i;

	for (x = 0; s[x] != '\0' && x == count; x++)
		for (i = 0; accept[i] != '\0'; i++)
			if (s[x] == accept[i])
				count++;

	return (count);
}
