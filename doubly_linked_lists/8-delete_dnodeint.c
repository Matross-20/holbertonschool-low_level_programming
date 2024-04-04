#include <stdlib.h>
#include "lists.h"

/**
 * delete_dnodeint_at_index -function to delete node
 * @head: .....
 * @index: .....
 * Return: 1 if success
 */

int delete_dnodeint_at_index(dlistint_t **head, unsigned int index)
{
	dlistint_t *pointer = *head, *tmp = NULL;
	unsigned int i;

	if (*head == NULL)
	{
		return (-1);
	}

	for (i = 0; i < index; i++)
	{
		if (pointer == NULL)
			return (-1);
		pointer = pointer->next;
	}

	if (pointer->next)
	{
		tmp = pointer->next;
		tmp->prev = pointer->prev;
	}

	if (pointer->prev)
	{
		tmp = pointer->prev;
		tmp->next = pointer->next;
	}

	free(pointer);

	if (index == 0)
	{
		*head = tmp;
	}
	return (1);
}
