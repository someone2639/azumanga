.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

glabel func_80023490
/* 13C90 80023490 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 13C94 80023494 1800BFAF */  sw         $ra, 0x18($sp)
/* 13C98 80023498 1400B1AF */  sw         $s1, 0x14($sp)
/* 13C9C 8002349C 1000B0AF */  sw         $s0, 0x10($sp)
/* 13CA0 800234A0 0C00908C */  lw         $s0, 0xC($a0)
/* 13CA4 800234A4 00000000 */  nop
/* 13CA8 800234A8 09000016 */  bnez       $s0, .L800234D0
/* 13CAC 800234AC 2188A000 */   addu      $s1, $a1, $zero
/* 13CB0 800234B0 0180043C */  lui        $a0, %hi(D_800113D0)
/* 13CB4 800234B4 0180053C */  lui        $a1, %hi(D_80011414)
/* 13CB8 800234B8 D0138424 */  addiu      $a0, $a0, %lo(D_800113D0)
/* 13CBC 800234BC 1414A524 */  addiu      $a1, $a1, %lo(D_80011414)
/* 13CC0 800234C0 9361000C */  jal        printf
/* 13CC4 800234C4 B2010624 */   addiu     $a2, $zero, 0x1B2
/* 13CC8 800234C8 FFFF0324 */  addiu      $v1, $zero, -0x1
/* 13CCC 800234CC 010003AC */  sw         $v1, 0x1($zero)
.L800234D0:
/* 13CD0 800234D0 04002012 */  beqz       $s1, .L800234E4
/* 13CD4 800234D4 00000000 */   nop
/* 13CD8 800234D8 04000296 */  lhu        $v0, 0x4($s0)
/* 13CDC 800234DC 3C8D0008 */  j          .L800234F0
/* 13CE0 800234E0 01004234 */   ori       $v0, $v0, 0x1
.L800234E4:
/* 13CE4 800234E4 04000296 */  lhu        $v0, 0x4($s0)
/* 13CE8 800234E8 00000000 */  nop
/* 13CEC 800234EC FEFF4230 */  andi       $v0, $v0, 0xFFFE
.L800234F0:
/* 13CF0 800234F0 040002A6 */  sh         $v0, 0x4($s0)
/* 13CF4 800234F4 1800BF8F */  lw         $ra, 0x18($sp)
/* 13CF8 800234F8 1400B18F */  lw         $s1, 0x14($sp)
/* 13CFC 800234FC 1000B08F */  lw         $s0, 0x10($sp)
/* 13D00 80023500 0800E003 */  jr         $ra
/* 13D04 80023504 2000BD27 */   addiu     $sp, $sp, 0x20
.size func_80023490, . - func_80023490