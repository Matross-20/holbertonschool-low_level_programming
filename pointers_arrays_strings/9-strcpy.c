#include "main.h"

/**
 * _strcpy - copy a string
 * @dest: pointer 1 for paremeter 1
 * @src: pointer 2 for paremeter 2
 * Return: exit point
 */

char *_strcpy(char *dest, char *src)
{
int len, count;

	len = 0;

	while (src[len] != '\0')
		len++;
	for (count = 0; count <= len; count++)
		dest[count] = src[count];
	return (dest);
}
