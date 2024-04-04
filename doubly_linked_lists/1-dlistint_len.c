#include <stdlib.h>
#include "lists.h"

/**
 *dlistint_len - function returns length of list
 *@h: structure pointer
 *Return: value to be returned
 */
size_t dlistint_len(const dlistint_t *h)
{
	size_t i;

	for (i = 0; h != NULL; i++)
	{
		h = h->next;
	}
		;

	return (i);
}
