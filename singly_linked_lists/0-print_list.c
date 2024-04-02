#include <stdio.h>
#include <stdlib.h>
#include "lists.h"
#include <string.h>

/**
 *print_list - function prints list
 *@h: head pointer/ stucture pointer
 *Return: return num of elements
 */
size_t print_list(const list_t *h)
{
	size_t num;

	num = 0;

	while (h != NULL)
	{
		if (h->str == NULL)
			printf("[%d] (nil)\n", 0);
		else
			printf("[%d] %s\n", h->len, h->str);
		h = h->next;
		num++;
	}

	return (num);
}
