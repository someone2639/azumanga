.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

# Handwritten function
glabel func_8005A730
/* 4AF30 8005A730 000080C8 */  lwc2       $0, 0x0($a0)
/* 4AF34 8005A734 040081C8 */  lwc2       $1, 0x4($a0)
/* 4AF38 8005A738 00000000 */  nop
/* 4AF3C 8005A73C 0100184A */  RTPS
/* 4AF40 8005A740 0000AEE8 */  swc2       $14, 0x0($a1)
/* 4AF44 8005A744 0000C8E8 */  swc2       $8, 0x0($a2)
/* 4AF48 8005A748 00F84348 */  cfc2       $v1, $31 # handwritten instruction
/* 4AF4C 8005A74C 00980248 */  mfc2       $v0, $19 # handwritten instruction
/* 4AF50 8005A750 0000E3AC */  sw         $v1, 0x0($a3)
/* 4AF54 8005A754 0800E003 */  jr         $ra
/* 4AF58 8005A758 83100200 */   sra       $v0, $v0, 2
/* 4AF5C 8005A75C 00000000 */  nop
.size func_8005A730, . - func_8005A730