.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

glabel func_80060FC0
/* 517C0 80060FC0 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 517C4 80060FC4 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 517C8 80060FC8 21980000 */  addu       $s3, $zero, $zero
/* 517CC 80060FCC 2800B2AF */  sw         $s2, 0x28($sp)
/* 517D0 80060FD0 1D041224 */  addiu      $s2, $zero, 0x41D
/* 517D4 80060FD4 3000BFAF */  sw         $ra, 0x30($sp)
/* 517D8 80060FD8 2400B1AF */  sw         $s1, 0x24($sp)
/* 517DC 80060FDC 04008014 */  bnez       $a0, .L80060FF0
/* 517E0 80060FE0 2000B0AF */   sw        $s0, 0x20($sp)
/* 517E4 80060FE4 21800000 */  addu       $s0, $zero, $zero
/* 517E8 80060FE8 2D840108 */  j          .L800610B4
/* 517EC 80060FEC 21880000 */   addu      $s1, $zero, $zero
.L80060FF0:
/* 517F0 80060FF0 0080023C */  lui        $v0, (0x80000000 >> 16)
/* 517F4 80060FF4 04008214 */  bne        $a0, $v0, .L80061008
/* 517F8 80060FF8 00000000 */   nop
/* 517FC 80060FFC E0C1113C */  lui        $s1, (0xC1E00000 >> 16)
/* 51800 80061000 2D840108 */  j          .L800610B4
/* 51804 80061004 21800000 */   addu      $s0, $zero, $zero
.L80061008:
/* 51808 80061008 03008104 */  bgez       $a0, .L80061018
/* 5180C 8006100C FF00023C */   lui       $v0, (0xFFFFFF >> 16)
/* 51810 80061010 0080133C */  lui        $s3, (0x80000000 >> 16)
/* 51814 80061014 23200400 */  negu       $a0, $a0
.L80061018:
/* 51818 80061018 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
/* 5181C 8006101C 2A104400 */  slt        $v0, $v0, $a0
/* 51820 80061020 08004014 */  bnez       $v0, .L80061044
/* 51824 80061024 FF3F023C */   lui       $v0, (0x3FFFFFFF >> 16)
/* 51828 80061028 FF00033C */  lui        $v1, (0xFFFFFF >> 16)
/* 5182C 8006102C FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
.L80061030:
/* 51830 80061030 00210400 */  sll        $a0, $a0, 4
/* 51834 80061034 2A106400 */  slt        $v0, $v1, $a0
/* 51838 80061038 FDFF4010 */  beqz       $v0, .L80061030
/* 5183C 8006103C FCFF5226 */   addiu     $s2, $s2, -0x4
/* 51840 80061040 FF3F023C */  lui        $v0, (0x3FFFFFFF >> 16)
.L80061044:
/* 51844 80061044 FFFF4234 */  ori        $v0, $v0, (0x3FFFFFFF & 0xFFFF)
/* 51848 80061048 2A104400 */  slt        $v0, $v0, $a0
/* 5184C 8006104C 08004014 */  bnez       $v0, .L80061070
/* 51850 80061050 0A000224 */   addiu     $v0, $zero, 0xA
/* 51854 80061054 FF3F033C */  lui        $v1, (0x3FFFFFFF >> 16)
/* 51858 80061058 FFFF6334 */  ori        $v1, $v1, (0x3FFFFFFF & 0xFFFF)
.L8006105C:
/* 5185C 8006105C 40200400 */  sll        $a0, $a0, 1
/* 51860 80061060 2A106400 */  slt        $v0, $v1, $a0
/* 51864 80061064 FDFF4010 */  beqz       $v0, .L8006105C
/* 51868 80061068 FFFF5226 */   addiu     $s2, $s2, -0x1
/* 5186C 8006106C 0A000224 */  addiu      $v0, $zero, 0xA
.L80061070:
/* 51870 80061070 1C00A4AF */  sw         $a0, 0x1C($sp)
/* 51874 80061074 1800A427 */  addiu      $a0, $sp, 0x18
/* 51878 80061078 1800A0AF */  sw         $zero, 0x18($sp)
/* 5187C 8006107C 1000A2AF */  sw         $v0, 0x10($sp)
/* 51880 80061080 1800A68F */  lw         $a2, 0x18($sp)
/* 51884 80061084 1C00A78F */  lw         $a3, 0x1C($sp)
/* 51888 80061088 8083010C */  jal        func_80060E00
/* 5188C 8006108C 01000524 */   addiu     $a1, $zero, 0x1
/* 51890 80061090 EFFF023C */  lui        $v0, (0xFFEFFFFF >> 16)
/* 51894 80061094 1C00A38F */  lw         $v1, 0x1C($sp)
/* 51898 80061098 FFFF4234 */  ori        $v0, $v0, (0xFFEFFFFF & 0xFFFF)
/* 5189C 8006109C 24186200 */  and        $v1, $v1, $v0
/* 518A0 800610A0 25887300 */  or         $s1, $v1, $s3
/* 518A4 800610A4 00151200 */  sll        $v0, $s2, 20
/* 518A8 800610A8 25882202 */  or         $s1, $s1, $v0
/* 518AC 800610AC 1800B08F */  lw         $s0, 0x18($sp)
/* 518B0 800610B0 1C00A3AF */  sw         $v1, 0x1C($sp)
.L800610B4:
/* 518B4 800610B4 21100002 */  addu       $v0, $s0, $zero
/* 518B8 800610B8 21182002 */  addu       $v1, $s1, $zero
/* 518BC 800610BC 3000BF8F */  lw         $ra, 0x30($sp)
/* 518C0 800610C0 2C00B38F */  lw         $s3, 0x2C($sp)
/* 518C4 800610C4 2800B28F */  lw         $s2, 0x28($sp)
/* 518C8 800610C8 2400B18F */  lw         $s1, 0x24($sp)
/* 518CC 800610CC 2000B08F */  lw         $s0, 0x20($sp)
/* 518D0 800610D0 0800E003 */  jr         $ra
/* 518D4 800610D4 3800BD27 */   addiu     $sp, $sp, 0x38
/* 518D8 800610D8 00000000 */  nop
/* 518DC 800610DC 00000000 */  nop
.size func_80060FC0, . - func_80060FC0