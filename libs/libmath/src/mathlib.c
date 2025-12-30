#include "../include/math.h"

// +
int add(int a, int b) {
    return a + b;
}

// -
int sub(int a, int b) {
    return a - b;
}
 
// x
int mul(int a, int b) {
    return a * b;
}

// /
double div(double a, double b) {
    if (b == 0.0) return 0.0;
    return a / b;
}

int clamp(int value, int min, int max) {
    if (value < min) return min;
    if (value > max) return max;
    return value;
}
