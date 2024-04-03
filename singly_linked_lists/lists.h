#ifndef LIST_H
#define LIST_H
#include <stdio.h>
#include <stdlib.h>
#include <strings.h>

/**
 * struct node - singly linked list struct name
 * @str: string - string pointer
 * @len: length of the string
 * @next: points to the next node
 */
typedef struct node
{
	char *str;
	int len;
	struct node *next;
} list_t;

size_t print_list(const list_t *h);
size_t list_len(const list_t *h);
list_t *add_node(list_t **head, const char *str);

#endif
