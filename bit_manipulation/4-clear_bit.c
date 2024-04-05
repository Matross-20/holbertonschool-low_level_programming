#include "main.h"

/**
 * clear_bit - function to set bit to 0
 * @n: pointer to int
 * index: index of n
 * Return: 1 if success
 */

int clear_bit(unsigned long int *n, unsigned int index)
{
	unsigned int i;
	
	if (index > 63)
		return (-1);
	i = 1 << index;
	if (*n & i)
		*n ^= i;

	return (1);
}
