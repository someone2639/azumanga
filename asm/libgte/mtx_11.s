.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

# Handwritten function
glabel SetColorMatrix
/* 11484 80020C84 0000888C */  lw         $t0, 0x0($a0)
/* 11488 80020C88 0400898C */  lw         $t1, 0x4($a0)
/* 1148C 80020C8C 08008A8C */  lw         $t2, 0x8($a0)
/* 11490 80020C90 0C008B8C */  lw         $t3, 0xC($a0)
/* 11494 80020C94 10008C8C */  lw         $t4, 0x10($a0)
/* 11498 80020C98 0080C848 */  ctc2       $t0, $16 # handwritten instruction
/* 1149C 80020C9C 0088C948 */  ctc2       $t1, $17 # handwritten instruction
/* 114A0 80020CA0 0090CA48 */  ctc2       $t2, $18 # handwritten instruction
/* 114A4 80020CA4 0098CB48 */  ctc2       $t3, $19 # handwritten instruction
/* 114A8 80020CA8 00A0CC48 */  ctc2       $t4, $20 # handwritten instruction
/* 114AC 80020CAC 0800E003 */  jr         $ra
/* 114B0 80020CB0 00000000 */   nop
.size SetColorMatrix, . - SetColorMatrix
