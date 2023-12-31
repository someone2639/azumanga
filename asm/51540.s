.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

glabel _dbl_shift
/* 51540 80060D40 0800A6AF */  sw         $a2, 0x8($sp)
/* 51544 80060D44 1000A68F */  lw         $a2, 0x10($sp)
/* 51548 80060D48 21408000 */  addu       $t0, $a0, $zero
/* 5154C 80060D4C 1400A014 */  bnez       $a1, .L80060DA0
/* 51550 80060D50 0C00A7AF */   sw        $a3, 0xC($sp)
/* 51554 80060D54 2300C018 */  blez       $a2, DBSHIFT_OBJ_A4
/* 51558 80060D58 21200000 */   addu      $a0, $zero, $zero
/* 5155C 80060D5C 0080073C */  lui        $a3, (0x80000000 >> 16)
.size _dbl_shift, . - _dbl_shift

glabel DBSHIFT_OBJ_20
/* 51560 80060D60 0C00A28F */  lw         $v0, 0xC($sp)
/* 51564 80060D64 0800A58F */  lw         $a1, 0x8($sp)
/* 51568 80060D68 40180200 */  sll        $v1, $v0, 1
/* 5156C 80060D6C 2410A700 */  and        $v0, $a1, $a3
/* 51570 80060D70 03004010 */  beqz       $v0, .L80060D80
/* 51574 80060D74 0C00A3AF */   sw        $v1, 0xC($sp)
/* 51578 80060D78 01006234 */  ori        $v0, $v1, 0x1
/* 5157C 80060D7C 0C00A2AF */  sw         $v0, 0xC($sp)
.L80060D80:
/* 51580 80060D80 40100500 */  sll        $v0, $a1, 1
/* 51584 80060D84 0800A2AF */  sw         $v0, 0x8($sp)
/* 51588 80060D88 01008424 */  addiu      $a0, $a0, 0x1
/* 5158C 80060D8C 2A108600 */  slt        $v0, $a0, $a2
/* 51590 80060D90 14004010 */  beqz       $v0, DBSHIFT_OBJ_A4
/* 51594 80060D94 00000000 */   nop
/* 51598 80060D98 58830108 */  j          DBSHIFT_OBJ_20
/* 5159C 80060D9C 00000000 */   nop
.L80060DA0:
/* 515A0 80060DA0 1000C018 */  blez       $a2, DBSHIFT_OBJ_A4
/* 515A4 80060DA4 21200000 */   addu      $a0, $zero, $zero
/* 515A8 80060DA8 0080073C */  lui        $a3, (0x80000000 >> 16)
.L80060DAC:
/* 515AC 80060DAC 0800A28F */  lw         $v0, 0x8($sp)
/* 515B0 80060DB0 0C00A58F */  lw         $a1, 0xC($sp)
/* 515B4 80060DB4 42180200 */  srl        $v1, $v0, 1
/* 515B8 80060DB8 0100A230 */  andi       $v0, $a1, 0x1
/* 515BC 80060DBC 03004010 */  beqz       $v0, .L80060DCC
/* 515C0 80060DC0 0800A3AF */   sw        $v1, 0x8($sp)
/* 515C4 80060DC4 25106700 */  or         $v0, $v1, $a3
/* 515C8 80060DC8 0800A2AF */  sw         $v0, 0x8($sp)
.L80060DCC:
/* 515CC 80060DCC 43100500 */  sra        $v0, $a1, 1
/* 515D0 80060DD0 0C00A2AF */  sw         $v0, 0xC($sp)
/* 515D4 80060DD4 01008424 */  addiu      $a0, $a0, 0x1
/* 515D8 80060DD8 2A108600 */  slt        $v0, $a0, $a2
/* 515DC 80060DDC F3FF4014 */  bnez       $v0, .L80060DAC
/* 515E0 80060DE0 00000000 */   nop
.size DBSHIFT_OBJ_20, . - DBSHIFT_OBJ_20

glabel DBSHIFT_OBJ_A4
/* 515E4 80060DE4 0800A28F */  lw         $v0, 0x8($sp)
/* 515E8 80060DE8 0C00A38F */  lw         $v1, 0xC($sp)
/* 515EC 80060DEC 000002AD */  sw         $v0, 0x0($t0)
/* 515F0 80060DF0 040003AD */  sw         $v1, 0x4($t0)
/* 515F4 80060DF4 0800E003 */  jr         $ra
/* 515F8 80060DF8 21100001 */   addu      $v0, $t0, $zero
/* 515FC 80060DFC 00000000 */  nop
.size DBSHIFT_OBJ_A4, . - DBSHIFT_OBJ_A4
