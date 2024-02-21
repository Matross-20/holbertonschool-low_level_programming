#include <stdio.h>

int main() {
    char letter = 'a';

    // Print the alphabet excluding 'q' and 'e' using putchar
    while (letter <= 'z') {
        if (letter != 'e' && letter != 'q') {
            putchar(letter);
        }
        letter++;
    }

    // Print a new line using putchar
    putchar('\n');

    return 0;
}
