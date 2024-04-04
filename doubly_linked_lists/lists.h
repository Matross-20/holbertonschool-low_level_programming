#ifndef LISTS_H
#define LISTS_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct dlistint_s
{
    int n;
    struct dlistint_s *prev;
    struct dlistint_s *next;
} dlistint_t;

size_t print_dlistint(const dlistint_t *h);

#endif
