.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

glabel ReturnFromException
/* 97CC 80018FCC B0000A24 */  addiu      $t2, $zero, 0xB0
/* 97D0 80018FD0 08004001 */  jr         $t2
/* 97D4 80018FD4 17000924 */   addiu     $t1, $zero, 0x17
/* 97D8 80018FD8 00000000 */  nop
.size ReturnFromException, . - ReturnFromException
