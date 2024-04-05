#include <stdlib.h>
#include "main.h"

/**
 *get_bit - function to get index
 *@n: argument to use for index
 *@index: number of bits to not pass
 *Return: n and if success and 1
 */

int get_bit(unsigned long int n, unsigned int index)
{
	unsigned long int max = 0x01;

	max <<= index;
	if (max == 0)
		return (-1);

	if ((n & max))
		return (1);
	else
		return (0);
}
