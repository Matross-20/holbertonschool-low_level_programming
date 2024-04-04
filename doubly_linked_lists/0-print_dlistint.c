#include <stdlib.h>
#include "lists.h"

/**
 *print_dlistint - function prints elements in a list
 *@h: structure pointer 
 *Return: value to be returned
 */
size_t print_dlistint(const dlistint_t *h)
{
	size_t i;

	for (i = 0; h != NULL; i++)
	{
		printf("%d\n", h->n);
		h = h->next;
	}
	return (i);
}
