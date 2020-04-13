#ifndef MEM_H
#define MEM_H
  
#include <stdint.h>
#include <stddef.h>

void *memset(void *p, int c, size_t count);
void *memcpy(void *dest, const void *src, size_t n);

#endif