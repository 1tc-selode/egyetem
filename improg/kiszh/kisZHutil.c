#include "kisZHutil.h"
#include <stdio.h>
#include <string.h>

int my_strcmp(const char * rhs, const char * lhs);

bool compare_to_strcmp(const char * lhs, const char * rhs) {
    const int std = strcmp(lhs, rhs);
    const int cust = my_strcmp(lhs, rhs);
    printf("strcmp(%s, %s): %i\tmy_strcmp(%s, %s): %i\t",
        lhs, rhs, std, lhs, rhs, cust);
    if (
        (std < 0 && cust < 0) ||
        (std == 0 && cust == 0) ||
        (std > 0 && cust > 0)
    ) {
        printf("OK\n");
        return 1;
    }
    printf("FAIL\n");
    return 0;
}

// Csak a 27-28-as sorok módosíthatóak
bool bonus_wtf() {
    printf("BONUS\n");
    char foo[] = "foo";
    char bar[] = "bar";

    char out1[32];
    sprintf(out1, "strcmp(\"%s\", \"%s\")=%i", foo, bar, strcmp(foo, bar));
    char out2[32];
    sprintf(out2, "strcmp(\"foo\", \"bar\")=%i", strcmp("foo", "bar"));

    printf("%s\n%s\n", out1, out2);

    return strcmp(out1, out2) == 0;
}