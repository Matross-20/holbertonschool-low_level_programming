#include <stdio.h>
/**
 *main -  prints all the numbers of base 16 in lowercase
 *Return: end product of the string
 */
int main(void)
{
	char num = '0';
	char alp;

	if (num <= '9')
	{
		for (num = '0'; num <= '9'; num++)
			putchar(num);

		for (alp = 'a'; alp <= 'f'; alp++)
			putchar(alp);
	}
	putchar('\n');
	return (0);
}
