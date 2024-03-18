#include <stdlib.h>
#include "function_pointers.h"

/**
 *array_iterator - a function given as a parameter on each element of an array
 *@array: the array to iterate
 *@size: the size of the array
 *@action: the function to excute array and size
 *Return: Nothing
 */

void array_iterator(int *array, size_t size, void (*action)(int))
{
	unsigned int i = 0;

	if (action == NULL || array == NULL)
		return;

	for (; i < size; i++)
		action(array[i]);
}
