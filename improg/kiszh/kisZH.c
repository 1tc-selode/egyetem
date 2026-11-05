#include <stdio.h>
#include "kisZHutil.h"


// https://en.cppreference.com/c/string/byte/strcmp
// Csak 10 perced van a munkára!

int my_strcmp(const char *rhs, const char *lhs) {
    while (*rhs == *lhs && *rhs != '\0') {
        rhs++;
        lhs++;
    }
    // return printf("[%s] [%s]\n", lhs, rhs);
    return (unsigned char)*rhs - (unsigned char)*lhs;
}


int main(void) {
    double score = 0;
    if (
        compare_to_strcmp("foo", "foo") &&
        compare_to_strcmp("foo", "bar") &&
        compare_to_strcmp("bar", "foo")
    ) score += 0.5;
    printf("-----\n");
    if (
        compare_to_strcmp("mints", "mince") &&
        compare_to_strcmp("Game rant", "Gamer ant")
    ) score += 0.5;
    printf("-----\n");
    if (
        compare_to_strcmp("foobar", "foo") &&
        compare_to_strcmp("foo", "foobar")
    ) score += 1;
    if (score == 2) {
        score += (double) bonus_wtf();
    }
    printf("%g pont\n", score);
    
    return 0;
}