#include <stdio.h>
#include "lists.h"
#include <stdlib.h>

/**
 *free_list - function that frees a list
 *@head: structure variable/ pointer to first member of node structure
 */
void free_list(list_t *head)
{
	list_t *freeSpace;

	while ((freeSpace = head) != NULL)
	{
		head = head->next;
		free(freeSpace->str);
		free(freeSpace);
	}
}
