.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

# Handwritten function
glabel SetTransMatrix
/* F3A8 8001EBA8 1400888C */  lw         $t0, 0x14($a0)
/* F3AC 8001EBAC 1800898C */  lw         $t1, 0x18($a0)
/* F3B0 8001EBB0 1C008A8C */  lw         $t2, 0x1C($a0)
/* F3B4 8001EBB4 0028C848 */  ctc2       $t0, $5 # handwritten instruction
/* F3B8 8001EBB8 0030C948 */  ctc2       $t1, $6 # handwritten instruction
/* F3BC 8001EBBC 0038CA48 */  ctc2       $t2, $7 # handwritten instruction
/* F3C0 8001EBC0 0800E003 */  jr         $ra
/* F3C4 8001EBC4 00000000 */   nop
.size SetTransMatrix, . - SetTransMatrix
