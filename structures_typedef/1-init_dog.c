#include <stdio.h>
#include "dog.h"
#include <stdlib.h>

/**
 *init_dog - function initializes variable
 *@d: variable
 *@name: name of dog
 *@age: age of owner
 *@owner: name of owner
 */
void init_dog(struct dog *d, char *name, float age, char *owner)
{
	if (d != NULL)
	{
		d->name = name;
		d->age = age;
		d->owner = owner;
	}
}
