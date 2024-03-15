#include "dog.h"
#include <stdlib.h>

/**
 * free_dog - free dog
 * @d: pointer to dog struct
 *
 * Retrun: nothing
 */
void free_dog(dog_t *d)
{
if (!d)
return;
free(d->name);
free(d->owner);
free(d);
}
