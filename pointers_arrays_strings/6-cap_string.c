#include "main.h"



/**
 * is_sep - Check if a char is a separator.
 * @s: The char to test
 *
 * Return: 1 if separator is found else 0
 */
int is_sep(char s)
{
char sep[] = {'\t', '\n', ' ', ',', ';', '!',
'.', '?', '\"', '(', ')', '{', '}'};
int i = 0;
while (sep[i] != '\0')
{
if (s == sep[i])
return (1);
i++;
}
return (0);
}
/**
 * cap_string - This function capitalize all words of a string
 * @s: string to be processed
 * Return: pointer to the modified string
 */
char *cap_string(char *s)
{
int cap, h;
cap = 1;
h = 0;
while (s[h] != '\0')
{
if (cap == 1 && (s[h] >= 'a' && s[h] <= 'z'))
{
s[h] -= 32;
cap = 0;
}
cap = is_sep(s[h]);
h++;
}
return (s);
}
