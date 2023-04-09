#include <stdio.h>

int main() {
    int i, j, k, l, m;

    for (i = 1; i <= 4; i++) {
        for (j = 1; j <= 4; j++) {
            if (j == i) continue;
            for (k = 1; k <= 4; k++) {
                if (k == i || k == j) continue;
                for (l = 1; l <= 4; l++) {
                    if (l == i || l == j || l == k) continue;
                        printf("%d %d %d %d\n", i, j, k, l);
                }
            }
        }
    }
    return 0;
}
