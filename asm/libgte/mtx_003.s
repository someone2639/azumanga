.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

# Handwritten function
glabel CompMatrix
/* F0D8 8001E8D8 0000888C */  lw         $t0, 0x0($a0)
/* F0DC 8001E8DC 0400898C */  lw         $t1, 0x4($a0)
/* F0E0 8001E8E0 08008A8C */  lw         $t2, 0x8($a0)
/* F0E4 8001E8E4 0C008B8C */  lw         $t3, 0xC($a0)
/* F0E8 8001E8E8 10008C8C */  lw         $t4, 0x10($a0)
/* F0EC 8001E8EC 0000C848 */  ctc2       $t0, $0 # handwritten instruction
/* F0F0 8001E8F0 0008C948 */  ctc2       $t1, $1 # handwritten instruction
/* F0F4 8001E8F4 0010CA48 */  ctc2       $t2, $2 # handwritten instruction
/* F0F8 8001E8F8 0018CB48 */  ctc2       $t3, $3 # handwritten instruction
/* F0FC 8001E8FC 0020CC48 */  ctc2       $t4, $4 # handwritten instruction
/* F100 8001E900 0000A894 */  lhu        $t0, 0x0($a1)
/* F104 8001E904 0400A98C */  lw         $t1, 0x4($a1)
/* F108 8001E908 0C00AA8C */  lw         $t2, 0xC($a1)
/* F10C 8001E90C FFFF013C */  lui        $at, (0xFFFF0000 >> 16)
/* F110 8001E910 24482101 */  and        $t1, $t1, $at
/* F114 8001E914 25400901 */  or         $t0, $t0, $t1
/* F118 8001E918 00008848 */  mtc2       $t0, $0 # handwritten instruction
/* F11C 8001E91C 00088A48 */  mtc2       $t2, $1 # handwritten instruction
/* F120 8001E920 00000000 */  nop
/* F124 8001E924 1260484A */  MVMVA      1, 0, 0, 3, 0
/* F128 8001E928 0200A894 */  lhu        $t0, 0x2($a1)
/* F12C 8001E92C 0800A98C */  lw         $t1, 0x8($a1)
/* F130 8001E930 0E00AA84 */  lh         $t2, 0xE($a1)
/* F134 8001E934 004C0900 */  sll        $t1, $t1, 16
/* F138 8001E938 25400901 */  or         $t0, $t0, $t1
/* F13C 8001E93C 00480B48 */  mfc2       $t3, $9 # handwritten instruction
/* F140 8001E940 00500C48 */  mfc2       $t4, $10 # handwritten instruction
/* F144 8001E944 00580D48 */  mfc2       $t5, $11 # handwritten instruction
/* F148 8001E948 00008848 */  mtc2       $t0, $0 # handwritten instruction
/* F14C 8001E94C 00088A48 */  mtc2       $t2, $1 # handwritten instruction
/* F150 8001E950 00000000 */  nop
/* F154 8001E954 1260484A */  MVMVA      1, 0, 0, 3, 0
/* F158 8001E958 0400A894 */  lhu        $t0, 0x4($a1)
/* F15C 8001E95C 0800A98C */  lw         $t1, 0x8($a1)
/* F160 8001E960 1000AA8C */  lw         $t2, 0x10($a1)
/* F164 8001E964 FFFF013C */  lui        $at, (0xFFFF0000 >> 16)
/* F168 8001E968 24482101 */  and        $t1, $t1, $at
/* F16C 8001E96C 25400901 */  or         $t0, $t0, $t1
/* F170 8001E970 00480E48 */  mfc2       $t6, $9 # handwritten instruction
/* F174 8001E974 00500F48 */  mfc2       $t7, $10 # handwritten instruction
/* F178 8001E978 00581848 */  mfc2       $t8, $11 # handwritten instruction
/* F17C 8001E97C 00008848 */  mtc2       $t0, $0 # handwritten instruction
/* F180 8001E980 00088A48 */  mtc2       $t2, $1 # handwritten instruction
/* F184 8001E984 00000000 */  nop
/* F188 8001E988 1260484A */  MVMVA      1, 0, 0, 3, 0
/* F18C 8001E98C FFFF6B31 */  andi       $t3, $t3, 0xFFFF
/* F190 8001E990 00740E00 */  sll        $t6, $t6, 16
/* F194 8001E994 2570CB01 */  or         $t6, $t6, $t3
/* F198 8001E998 0000CEAC */  sw         $t6, 0x0($a2)
/* F19C 8001E99C FFFFAD31 */  andi       $t5, $t5, 0xFFFF
/* F1A0 8001E9A0 00C41800 */  sll        $t8, $t8, 16
/* F1A4 8001E9A4 25C00D03 */  or         $t8, $t8, $t5
/* F1A8 8001E9A8 0C00D8AC */  sw         $t8, 0xC($a2)
/* F1AC 8001E9AC 00480848 */  mfc2       $t0, $9 # handwritten instruction
/* F1B0 8001E9B0 00500948 */  mfc2       $t1, $10 # handwritten instruction
/* F1B4 8001E9B4 1000CBE8 */  swc2       $11, 0x10($a2)
/* F1B8 8001E9B8 1400AD94 */  lhu        $t5, 0x14($a1)
/* F1BC 8001E9BC 1800AE8C */  lw         $t6, 0x18($a1)
/* F1C0 8001E9C0 1C00AA8C */  lw         $t2, 0x1C($a1)
/* F1C4 8001E9C4 00740E00 */  sll        $t6, $t6, 16
/* F1C8 8001E9C8 2568AE01 */  or         $t5, $t5, $t6
/* F1CC 8001E9CC 00008D48 */  mtc2       $t5, $0 # handwritten instruction
/* F1D0 8001E9D0 00088A48 */  mtc2       $t2, $1 # handwritten instruction
/* F1D4 8001E9D4 00000000 */  nop
/* F1D8 8001E9D8 1260484A */  MVMVA      1, 0, 0, 3, 0
/* F1DC 8001E9DC 00640C00 */  sll        $t4, $t4, 16
/* F1E0 8001E9E0 FFFF0831 */  andi       $t0, $t0, 0xFFFF
/* F1E4 8001E9E4 25400C01 */  or         $t0, $t0, $t4
/* F1E8 8001E9E8 0400C8AC */  sw         $t0, 0x4($a2)
/* F1EC 8001E9EC FFFFEF31 */  andi       $t7, $t7, 0xFFFF
/* F1F0 8001E9F0 004C0900 */  sll        $t1, $t1, 16
/* F1F4 8001E9F4 25482F01 */  or         $t1, $t1, $t7
/* F1F8 8001E9F8 0800C9AC */  sw         $t1, 0x8($a2)
/* F1FC 8001E9FC 00C80848 */  mfc2       $t0, $25 # handwritten instruction
/* F200 8001EA00 00D00948 */  mfc2       $t1, $26 # handwritten instruction
/* F204 8001EA04 00D80A48 */  mfc2       $t2, $27 # handwritten instruction
/* F208 8001EA08 14008B8C */  lw         $t3, 0x14($a0)
/* F20C 8001EA0C 18008C8C */  lw         $t4, 0x18($a0)
/* F210 8001EA10 1C008D8C */  lw         $t5, 0x1C($a0)
/* F214 8001EA14 20400B01 */  add        $t0, $t0, $t3 # handwritten instruction
/* F218 8001EA18 20482C01 */  add        $t1, $t1, $t4 # handwritten instruction
/* F21C 8001EA1C 20504D01 */  add        $t2, $t2, $t5 # handwritten instruction
/* F220 8001EA20 1400C8AC */  sw         $t0, 0x14($a2)
/* F224 8001EA24 1800C9AC */  sw         $t1, 0x18($a2)
/* F228 8001EA28 1C00CAAC */  sw         $t2, 0x1C($a2)
/* F22C 8001EA2C 2110C000 */  addu       $v0, $a2, $zero
/* F230 8001EA30 0800E003 */  jr         $ra
/* F234 8001EA34 00000000 */   nop
.size CompMatrix, . - CompMatrix
