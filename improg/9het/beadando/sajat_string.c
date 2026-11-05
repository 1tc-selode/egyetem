#include "sajat_string.h"

int strlen(char s[]) {
    int i = 0;
    while (s[i] != '\0')
        i++;
    return i;
}

void strcpy(char a[], char b[]) {
    int i = 0;
    while (b[i] != '\0') {
        a[i] = b[i];
        i++;
    }
    a[i] = '\0';
}

int strcmp(char a[], char b[]) {
    int i = 0;
    while (a[i] == b[i] && a[i] != '\0')
        i++;
    return a[i] - b[i];
}