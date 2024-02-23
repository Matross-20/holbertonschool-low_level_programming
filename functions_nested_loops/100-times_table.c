#include <stdio.h>

void print_times_table(int n) {
    if (n < 0 || n > 15) {
        // Do not print anything if n is less than 0 or greater than 15
        return;
    }

    for (int i = 0; i <= n; i++) {
        for (int j = 0; j <= n; j++) {
            int result = i * j;

            if (j > 0) {
                printf(", ");
            }

            if (result < 10) {
                printf("  %d", result);
            } else if (result < 100) {
                printf(" %d", result);
            } else {
                printf("%d", result);
            }
        }

        printf("\n");
    }
}

int main() {
    // Example usage:
    int n = 9;
    print_times_table(n);

    return 0;
}

