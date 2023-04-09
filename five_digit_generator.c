#include <stdio.h>

int main() {
    int i, j, k, l, m;

    for (i = 1; i <= 5; i++) {
        for (j = 1; j <= 5; j++) {
            if (j == i) continue;
            for (k = 1; k <= 5; k++) {
                if (k == i || k == j) continue;
                for (l = 1; l <= 5; l++) {
                    if (l == i || l == j || l == k) continue;
                    for (m = 1; m <= 5; m++) {
                        if (m == i || m == j || m == k || m == l) continue;
                        printf("%d %d %d %d %d\n", i, j, k, l, m);
                    }
                }
            }
        }
    }

    return 0;
}
