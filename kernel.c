#include <stdint.h>
#include <stddef.h>
#include "mem.h"
#include "port.h"
#include "screen.h"
#include "kernel.h"
#include "port.h"

void kernel_entry()
{
	terminal_initialize();
	
	print("Hello, World!\n");
	
	for(;;) {}
}