#include <stdio.h>
/**
*main - prints the lowercase alphabet in reverse
*Return: end product of the string 
*/

int main (void)
{
char current_char = 'z';
while (current_char >= 'a')
  {
    putchar(current_char);
    current_char--;
  }
 putchar('\n');

   return (0);
}  
