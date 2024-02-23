#include "main.h"

/**
 *_isalpha - starts the function
 *Return: end of function
 *@c: int variable name
 */
int _isalpha(int c)

{
return (((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')) ? 1 : 0);
}

