.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

glabel close
/* 48E8C 8005868C B0000A24 */  addiu      $t2, $zero, 0xB0
/* 48E90 80058690 08004001 */  jr         $t2
/* 48E94 80058694 36000924 */   addiu     $t1, $zero, 0x36
/* 48E98 80058698 00000000 */  nop
.size close, . - close
