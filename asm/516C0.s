.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

glabel func_80060EC0
/* 516C0 80060EC0 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 516C4 80060EC4 FF7F023C */  lui        $v0, (0x7FFFFFFF >> 16)
/* 516C8 80060EC8 FFFF4234 */  ori        $v0, $v0, (0x7FFFFFFF & 0xFFFF)
/* 516CC 80060ECC 2400B1AF */  sw         $s1, 0x24($sp)
/* 516D0 80060ED0 2000B0AF */  sw         $s0, 0x20($sp)
/* 516D4 80060ED4 21808000 */  addu       $s0, $a0, $zero
/* 516D8 80060ED8 2188A000 */  addu       $s1, $a1, $zero
/* 516DC 80060EDC 24102202 */  and        $v0, $s1, $v0
/* 516E0 80060EE0 3000BFAF */  sw         $ra, 0x30($sp)
/* 516E4 80060EE4 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 516E8 80060EE8 03004014 */  bnez       $v0, .L80060EF8
/* 516EC 80060EEC 2800B2AF */   sw        $s2, 0x28($sp)
/* 516F0 80060EF0 29000012 */  beqz       $s0, .L80060F98
/* 516F4 80060EF4 21100000 */   addu      $v0, $zero, $zero
.L80060EF8:
/* 516F8 80060EF8 03151100 */  sra        $v0, $s1, 20
/* 516FC 80060EFC FF075230 */  andi       $s2, $v0, 0x7FF
/* 51700 80060F00 E3FB5326 */  addiu      $s3, $s2, -0x41D
/* 51704 80060F04 0800601A */  blez       $s3, .L80060F28
/* 51708 80060F08 22000424 */   addiu     $a0, $zero, 0x22
/* 5170C 80060F0C 5484010C */  jal        func_80061150
/* 51710 80060F10 11000524 */   addiu     $a1, $zero, 0x11
/* 51714 80060F14 FF7F023C */  lui        $v0, (0x7FFFFFFF >> 16)
/* 51718 80060F18 1F002106 */  bgez       $s1, .L80060F98
/* 5171C 80060F1C FFFF4234 */   ori       $v0, $v0, (0x7FFFFFFF & 0xFFFF)
/* 51720 80060F20 E6830108 */  j          .L80060F98
/* 51724 80060F24 0080023C */   lui       $v0, (0x80000000 >> 16)
.L80060F28:
/* 51728 80060F28 0F00023C */  lui        $v0, (0xFFFFF >> 16)
/* 5172C 80060F2C FFFF4234 */  ori        $v0, $v0, (0xFFFFF & 0xFFFF)
/* 51730 80060F30 1800A427 */  addiu      $a0, $sp, 0x18
/* 51734 80060F34 24102202 */  and        $v0, $s1, $v0
/* 51738 80060F38 1000033C */  lui        $v1, (0x100000 >> 16)
/* 5173C 80060F3C 25104300 */  or         $v0, $v0, $v1
/* 51740 80060F40 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 51744 80060F44 0A000224 */  addiu      $v0, $zero, 0xA
/* 51748 80060F48 1800B0AF */  sw         $s0, 0x18($sp)
/* 5174C 80060F4C 1000A2AF */  sw         $v0, 0x10($sp)
/* 51750 80060F50 1800A68F */  lw         $a2, 0x18($sp)
/* 51754 80060F54 1C00A78F */  lw         $a3, 0x1C($sp)
/* 51758 80060F58 5083010C */  jal        func_80060D40
/* 5175C 80060F5C 21280000 */   addu      $a1, $zero, $zero
/* 51760 80060F60 02FC4226 */  addiu      $v0, $s2, -0x3FE
/* 51764 80060F64 2000422C */  sltiu      $v0, $v0, 0x20
/* 51768 80060F68 1C00A38F */  lw         $v1, 0x1C($sp)
/* 5176C 80060F6C 05004010 */  beqz       $v0, .L80060F84
/* 51770 80060F70 00000000 */   nop
/* 51774 80060F74 03006010 */  beqz       $v1, .L80060F84
/* 51778 80060F78 23101300 */   negu      $v0, $s3
/* 5177C 80060F7C E3830108 */  j          .L80060F8C
/* 51780 80060F80 07184300 */   srav      $v1, $v1, $v0
.L80060F84:
/* 51784 80060F84 E6830108 */  j          .L80060F98
/* 51788 80060F88 21100000 */   addu      $v0, $zero, $zero
.L80060F8C:
/* 5178C 80060F8C 02002106 */  bgez       $s1, .L80060F98
/* 51790 80060F90 21106000 */   addu      $v0, $v1, $zero
/* 51794 80060F94 23100200 */  negu       $v0, $v0
.L80060F98:
/* 51798 80060F98 3000BF8F */  lw         $ra, 0x30($sp)
/* 5179C 80060F9C 2C00B38F */  lw         $s3, 0x2C($sp)
/* 517A0 80060FA0 2800B28F */  lw         $s2, 0x28($sp)
/* 517A4 80060FA4 2400B18F */  lw         $s1, 0x24($sp)
/* 517A8 80060FA8 2000B08F */  lw         $s0, 0x20($sp)
/* 517AC 80060FAC 0800E003 */  jr         $ra
/* 517B0 80060FB0 3800BD27 */   addiu     $sp, $sp, 0x38
/* 517B4 80060FB4 00000000 */  nop
/* 517B8 80060FB8 00000000 */  nop
/* 517BC 80060FBC 00000000 */  nop
.size func_80060EC0, . - func_80060EC0