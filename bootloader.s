.set MAGIC,    0x1BADB002
.set FLAGS,    0
.set CHECKSUM, -(MAGIC + FLAGS)

.section .multiboot

.long MAGIC
.long FLAGS
.long CHECKSUM

low:
.skip 1024

high:
.section .text
.global _start
.type _start, @function

_start:
	mov $high, %esp
	call kernel_entry
	cli
_loop:
	hlt
	jmp _loop

.size _start, . - _start
