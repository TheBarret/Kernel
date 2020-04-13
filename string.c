#include <stddef.h>
#include <stdint.h>

size_t strlen(const char* str) {
    size_t ret = 0;
    while ( str[ret] != 0 )
        ret++;
    return ret;
}

int strcmp(const char *s1, const char *s2) {
    while(*s1 && *s2) {
        if(*s1 != *s2) {
            return s1 - s2;
        }
        s1++;
        s2++;
    }
    if(*s1) return 1;
    if(*s2) return -1;
    return 0;
}