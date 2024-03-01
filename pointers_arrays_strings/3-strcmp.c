#include "main.h"

/**
 * _strcmp - compare two strings
 * @s1: first pointer for parameter 1
 * @s2: second pointer for parameter 2
 * Return: exit point
 */

int _strcmp(char *s1, char *s2)
{
	int length = 0, length1 = 0;

	while (s1[length])
		length++;
	while (s2[length1])
		length1++;
	if (length < length1)
		return (13);
	else if (length > length1)
		return (-13);
	return (0);
}
