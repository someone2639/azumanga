.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

glabel longjmp
/* 3F2A4 8004EAA4 A0000A24 */  addiu      $t2, $zero, 0xA0
/* 3F2A8 8004EAA8 08004001 */  jr         $t2
/* 3F2AC 8004EAAC 14000924 */   addiu     $t1, $zero, 0x14
/* 3F2B0 8004EAB0 00000000 */  nop
.size longjmp, . - longjmp