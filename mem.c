#include <stdint.h>
#include "mem.h"

extern void halt();

void *memset(void *p, int c, size_t count)
{
    for(unsigned int i = 0; i < count; i++)
    {
        ((char *)p)[i] = c;
    }
    return p;
}

void *memcpy(void *dest, const void *src, size_t n) {

    char *cdest = dest;
    const char *csrc = src;

    size_t i;
    for(i = 0; i < n; i++) {
        cdest[i] = csrc[i];
    }

    return dest;
}
