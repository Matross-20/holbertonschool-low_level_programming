#include <stdio.h>
#include <stdlib.h>
#include <time.h>

/**
 * main - assigns random number to the variable n each time it is excuted
 *Return: string
 */

int main(void)
{
	int n;
	int num;

	srand(time(0));
	n = rand() - RAND_MAX / 2;
	num = n % 10;

	if (num > 5)
		printf("Last digit of %d is %d and is greater than 5\n", n, num);
	else if (num == 0)
		printf("Last digit of %d is %d and is 0\n", n, num);
	else if (num < 6 && num != 0)
		printf("Last digit of %d is %d and is less than 6 and not 0\n", n, num);
	else
		printf("Last digit of %d is %d and is less than 0\n", n, num);
	return (0);
}
