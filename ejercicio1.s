        .arch armv6
        .eabi_attribute 28, 1
        .eabi_attribute 20, 1
        .eabi_attribute 21, 1
        .eabi_attribute 23, 3
        .eabi_attribute 24, 1
        .eabi_attribute 25, 1
        .eabi_attribute 26, 2
        .eabi_attribute 30, 4
        .eabi_attribute 34, 1
        .eabi_attribute 18, 4
        .file   "cuatro.c"
        .text
        .section        .text.startup,"ax",%progbits
        .align  2
        .global main
        .arch armv6
        .syntax unified
        .arm
        .fpu vfp
        .type   main, %function
main:
        @ args = 0, pretend = 0, frame = 0
        @ frame_needed = 0, uses_anonymous_args = 0
        @ link register save eliminated.
        ldr     r3, .L4
        mov     r2, #0
        ldr     r1, [r3]
        .L2:
        ldr     r0, [r3], #4
        add     r2, r2, #1
        cmp     r1, r0
        movge   r1, r0
        cmp     r2, #8
        bne     .L2
        ldr     r0, .L4+4
        b       printf
.L5:
        .align  2
.L4:
        .word   .LANCHOR0
        .word   .LC0
        .size   main, .-main
        .global v
        .data
        .align  2
        .set    .LANCHOR0,. + 0
        .type   v, %object
        .size   v, 32
        v:
        .word   8
        .word   10
        .word   -3
        .word   4
        .word   -5
        .word   50
        .word   2
        .word   3
        .section        .rodata.str1.1,"aMS",%progbits,1
.LC0:
        .ascii  "Minimo: %d\000"
        .ident  "GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
        .section        .note.GNU-stack,"",%progbits
