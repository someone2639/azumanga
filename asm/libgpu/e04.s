.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

glabel SetDefDispEnv
/* 2FE54 8003F654 1000A38F */  lw         $v1, 0x10($sp)
/* 2FE58 8003F658 21108000 */  addu       $v0, $a0, $zero
/* 2FE5C 8003F65C 000045A4 */  sh         $a1, 0x0($v0)
/* 2FE60 8003F660 020046A4 */  sh         $a2, 0x2($v0)
/* 2FE64 8003F664 040047A4 */  sh         $a3, 0x4($v0)
/* 2FE68 8003F668 080040A4 */  sh         $zero, 0x8($v0)
/* 2FE6C 8003F66C 0A0040A4 */  sh         $zero, 0xA($v0)
/* 2FE70 8003F670 0C0040A4 */  sh         $zero, 0xC($v0)
/* 2FE74 8003F674 0E0040A4 */  sh         $zero, 0xE($v0)
/* 2FE78 8003F678 110040A0 */  sb         $zero, 0x11($v0)
/* 2FE7C 8003F67C 100040A0 */  sb         $zero, 0x10($v0)
/* 2FE80 8003F680 130040A0 */  sb         $zero, 0x13($v0)
/* 2FE84 8003F684 120040A0 */  sb         $zero, 0x12($v0)
/* 2FE88 8003F688 0800E003 */  jr         $ra
/* 2FE8C 8003F68C 060043A4 */   sh        $v1, 0x6($v0)
/* 2FE90 8003F690 00000000 */  nop
.size SetDefDispEnv, . - SetDefDispEnv
