.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

glabel ChangeClearRCnt
/* 90DC 800188DC C0000A24 */  addiu      $t2, $zero, 0xC0
/* 90E0 800188E0 08004001 */  jr         $t2
/* 90E4 800188E4 0A000924 */   addiu     $t1, $zero, 0xA
/* 90E8 800188E8 00000000 */  nop
.size ChangeClearRCnt, . - ChangeClearRCnt
