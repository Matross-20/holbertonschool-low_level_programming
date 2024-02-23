#include "main.h"

/**
 *_isaplha - starts the function
 *Return: end of function
 *@c: int variable name
 */
int _isalpha(int c)
/**
 *_isaplha - starts the function
 */	
{
return (((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')) ? 1 : 0);
}

