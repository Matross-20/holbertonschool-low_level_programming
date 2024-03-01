#include "main.h"

/**
 * _strncpy - copies a string
 * @dest: pointer one of the parameter
 * @src: pointer two of the parameter
 * @n: variable for parameter
 * Return: exit point
 */

char *_strncpy(char *dest, char *src, int n)
{
	char *temp = dest;

	for (; n != 0 && *src != '\0'; n--, src++)
	{
		*temp = *src;
		temp++;
	}
	for (; n != 0 && *temp != '\0'; n--, temp++)
		*temp = '\0';
	return (dest);
}
