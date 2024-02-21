#include <stdio.h>
/**
 * main - prints a number
 * Return: returns a list of integers in the base 10 starting from 0
 */
int main(void)
{
int num = 0;

while (num < 10)
{
printf("%d", num);
num++;
}
putchar('\n');
return (0);
}
