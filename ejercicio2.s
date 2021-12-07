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
        .file   "cinco.c"
        .text
        .align  2
        .global media
        .arch armv6
        .syntax unified
        .arm
        .fpu vfp
        .type   media, %function
media:
        @ args = 0, pretend = 0, frame = 0
        @ frame_needed = 0, uses_anonymous_args = 0
        @ link register save eliminated.
        ldmia   r0, {r1, r3}
        add     r1, r1, r3
        ldr     r3, [r0, #8]
        ldr     r2, .L2
        add     r1, r1, r3
        ldr     r0, .L2+4
        smull   r2, r3, r1, r2
        sub     r1, r3, r1, asr #31
        b       printf
        .L3:
        .align  2
.L2:
        .word   1431655766
        .word   .LC0
        .size   media, .-media
        .section        .text.startup,"ax",%progbits
        .align  2
        .global main
        .syntax unified
        .arm
        .fpu vfp
        .type   main, %function
        main:
        @ args = 0, pretend = 0, frame = 0
        @ frame_needed = 0, uses_anonymous_args = 0
        push    {r4, lr}
        ldr     r4, .L6
        mov     r0, r4
        bl      media
        add     r0, r4, #12
        bl      media
        add     r0, r4, #24
        bl      media
        add     r0, r4, #36
        bl      media
        add     r0, r4, #48
        pop     {r4, lr}
        b       media
.L7:
        .align  2
        .L6:
        .word   .LANCHOR0
        .size   main, .-main
        .global v4
        .global v3
        .global v2
        .global v1
        .global v
        .data
        .align  2
        .set    .LANCHOR0,. + 0
        .type   v, %object
        .size   v, 12
        v:
        .word   8
        .word   10
        .word   -3
        .type   v1, %object
        .size   v1, 12
v1:
        .word   4
        .word   -5
        .word   50
        .type   v2, %object
        .size   v2, 12
v2:
        .word   2
        .word   3
        .word   7
        .type   v3, %object
        .size   v3, 12
        v3:
        .word   19
        .word   21
        .word   17
        .type   v4, %object
        .size   v4, 12
v4:
        .word   -1
        .word   5
        .word   6
        .section        .rodata.str1.1,"aMS",%progbits,1
.LC0:
        .ascii  "Media Aritmetica: %d \012\000"
        .ident  "GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
        .section        .note.GNU-stack,"",%progbits
