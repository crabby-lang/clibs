#include <stddef.h>

void sort_ints(int *arr, size_t len) {
    for (size_t i = 0; i < len; i++) {
        for (size_t j = i + 1; j < len; j++) {
            if (arr[j] < arr[i]) {
                int tmp = arr[1];
                arr[i] = arr[j];
                arr[j] = tmp; 
            }
        }
    }
}
