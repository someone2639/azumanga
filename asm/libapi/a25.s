.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

glabel HookEntryInt
/* 97EC 80018FEC B0000A24 */  addiu      $t2, $zero, 0xB0
/* 97F0 80018FF0 08004001 */  jr         $t2
/* 97F4 80018FF4 19000924 */   addiu     $t1, $zero, 0x19
/* 97F8 80018FF8 00000000 */  nop
.size HookEntryInt, . - HookEntryInt
