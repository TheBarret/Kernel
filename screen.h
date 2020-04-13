#ifndef SCREEN_H
#define SCREEN_H

#include <stddef.h>
#include <stdint.h>

void print(const char* data);
void terminal_initialize(void);
void terminal_setcolor(uint8_t color);
void terminal_move(char c, uint8_t color, size_t x, size_t y);
void terminal_put(char c);
void terminal_write(const char* data, size_t size);

#endif