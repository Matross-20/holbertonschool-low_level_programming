#include <stdio.h>

/**
 *main - prints all combinations of double digits
 *Return: end product of the string
 */

int main(void) {
    for (int i = 0; i < 10; i++) {
        for (int j = i + 1; j < 10; j++) {
            putchar('0' + i);
            putchar('0' + j);

            if (i != 8 || j != 9) {
                putchar(',');
                putchar(' ');
            }
        }
    }

    putchar('\n');

    return (0);
}

