#include <stdio.h>
#include <stdlib.h>
#include "lists.h"

/**
 *list_len - function returns length
 *@h: function variable of struct/ head pointer
 *Return: return number of elements
 */

size_t list_len(const list_t *h)
{
	size_t num;

	num = 0;
	while (h != NULL)
	{
		h = h->next;
		num++;
	}

	return (num);
}

