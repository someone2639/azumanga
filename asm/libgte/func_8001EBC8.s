.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

# Handwritten function
glabel func_8001EBC8
/* F3C8 8001EBC8 00240400 */  sll        $a0, $a0, 16
/* F3CC 8001EBCC 002C0500 */  sll        $a1, $a1, 16
/* F3D0 8001EBD0 00C0C448 */  ctc2       $a0, $24 # handwritten instruction
/* F3D4 8001EBD4 00C8C548 */  ctc2       $a1, $25 # handwritten instruction
/* F3D8 8001EBD8 0800E003 */  jr         $ra
/* F3DC 8001EBDC 00000000 */   nop
/* F3E0 8001EBE0 00000000 */  nop
/* F3E4 8001EBE4 00000000 */  nop
.size func_8001EBC8, . - func_8001EBC8
