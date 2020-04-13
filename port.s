.section .text
.global outb
.global inb
.global inw
.global insw
.global outsw

.type outb, @function
    
outb:

    movzwl	4(%esp), %edx
    movzbl	8(%esp), %eax

    outb %al, %dx
    ret

.size outb, . - outb

.type inb, @function

inb:
    xorl	%eax, %eax
    movzwl	4(%esp), %edx
    inb	%dx, %al
    ret

.size inb, . - inb

.type inw, @function

inw:
    xorl	%eax, %eax
    movzwl	4(%esp), %edx
    inw	%dx, %ax
    ret
.size inw, . - inw

.type insw, @function

insw:
    pushl   %edi
    movl    8(%esp), %edx  # port
    movl    12(%esp), %edi # addr
    movl    16(%esp), %ecx # count

    xorl    %eax, %eax
.insw_startLoop:
    cmpl    %eax, %ecx
    je      .insw_end

    insw

    incl    %eax
    jmp     .insw_startLoop

.insw_end:
    popl    %edi
    ret

.type outsw, @function

outsw:
    pushl   %esi
    movl    8(%esp), %edx  # port
    movl    12(%esp), %esi # addr
    movl    16(%esp), %ecx # count

    xorl    %eax, %eax
.outsw_startLoop:
    cmpl    %eax, %ecx
    je      .outsw_end

    outsw

    incl    %eax
    jmp     .outsw_startLoop

.outsw_end:
    popl    %esi
    ret
	