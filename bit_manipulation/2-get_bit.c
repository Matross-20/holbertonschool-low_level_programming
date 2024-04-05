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
	if (index > 63)
		return (0);

	return ((n >> index) & 1);
}
