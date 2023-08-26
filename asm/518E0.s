.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

glabel _mainasu
/* 518E0 800610E0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 518E4 800610E4 2000B0AF */  sw         $s0, 0x20($sp)
/* 518E8 800610E8 21808000 */  addu       $s0, $a0, $zero
/* 518EC 800610EC 01000224 */  addiu      $v0, $zero, 0x1
/* 518F0 800610F0 3000A6AF */  sw         $a2, 0x30($sp)
/* 518F4 800610F4 27300600 */  nor        $a2, $zero, $a2
/* 518F8 800610F8 2C00A5AF */  sw         $a1, 0x2C($sp)
/* 518FC 800610FC 27280500 */  nor        $a1, $zero, $a1
/* 51900 80061100 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 51904 80061104 1800A2AF */  sw         $v0, 0x18($sp)
/* 51908 80061108 3000A6AF */  sw         $a2, 0x30($sp)
/* 5190C 8006110C 2C00A5AF */  sw         $a1, 0x2C($sp)
/* 51910 80061110 1000A0AF */  sw         $zero, 0x10($sp)
/* 51914 80061114 1800A78F */  lw         $a3, 0x18($sp)
/* 51918 80061118 2C00A58F */  lw         $a1, 0x2C($sp)
/* 5191C 8006111C 3000A68F */  lw         $a2, 0x30($sp)
/* 51920 80061120 2400BFAF */  sw         $ra, 0x24($sp)
/* 51924 80061124 2483010C */  jal        _add_mant_d
/* 51928 80061128 2C00A427 */   addiu     $a0, $sp, 0x2C
/* 5192C 8006112C 2C00A28F */  lw         $v0, 0x2C($sp)
/* 51930 80061130 3000A38F */  lw         $v1, 0x30($sp)
/* 51934 80061134 000002AE */  sw         $v0, 0x0($s0)
/* 51938 80061138 040003AE */  sw         $v1, 0x4($s0)
/* 5193C 8006113C 21100002 */  addu       $v0, $s0, $zero
/* 51940 80061140 2400BF8F */  lw         $ra, 0x24($sp)
/* 51944 80061144 2000B08F */  lw         $s0, 0x20($sp)
/* 51948 80061148 0800E003 */  jr         $ra
/* 5194C 8006114C 2800BD27 */   addiu     $sp, $sp, 0x28
.size _mainasu, . - _mainasu

glabel _err_math
/* 51950 80061150 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 51954 80061154 21000224 */  addiu      $v0, $zero, 0x21
/* 51958 80061158 1000BFAF */  sw         $ra, 0x10($sp)
/* 5195C 8006115C 0780013C */  lui        $at, %hi(D_8006B820)
/* 51960 80061160 20B824AC */  sw         $a0, %lo(D_8006B820)($at)
/* 51964 80061164 0780013C */  lui        $at, %hi(D_8006B824)
/* 51968 80061168 06008210 */  beq        $a0, $v0, .L80061184
/* 5196C 8006116C 24B825AC */   sw        $a1, %lo(D_8006B824)($at)
/* 51970 80061170 22000224 */  addiu      $v0, $zero, 0x22
/* 51974 80061174 07008210 */  beq        $a0, $v0, .L80061194
/* 51978 80061178 00F4043C */   lui       $a0, (0xF4000002 >> 16)
/* 5197C 8006117C 69840108 */  j          FERR_OBJ_54
/* 51980 80061180 00000000 */   nop
.L80061184:
/* 51984 80061184 00F4043C */  lui        $a0, (0xF4000002 >> 16)
/* 51988 80061188 02008434 */  ori        $a0, $a0, (0xF4000002 & 0xFFFF)
/* 5198C 8006118C 67840108 */  j          FERR_OBJ_4C
/* 51990 80061190 01030524 */   addiu     $a1, $zero, 0x301
.L80061194:
/* 51994 80061194 02008434 */  ori        $a0, $a0, (0xF4000002 & 0xFFFF)
/* 51998 80061198 02030524 */  addiu      $a1, $zero, 0x302
.size _err_math, . - _err_math

glabel FERR_OBJ_4C
/* 5199C 8006119C D3CD000C */  jal        DeliverEvent
/* 519A0 800611A0 00000000 */   nop
.size FERR_OBJ_4C, . - FERR_OBJ_4C

glabel FERR_OBJ_54
/* 519A4 800611A4 1000BF8F */  lw         $ra, 0x10($sp)
/* 519A8 800611A8 21100000 */  addu       $v0, $zero, $zero
/* 519AC 800611AC 0800E003 */  jr         $ra
/* 519B0 800611B0 1800BD27 */   addiu     $sp, $sp, 0x18
/* 519B4 800611B4 00000000 */  nop
/* 519B8 800611B8 00000000 */  nop
/* 519BC 800611BC 00000000 */  nop
.size FERR_OBJ_54, . - FERR_OBJ_54
