.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

glabel func_80046520
/* 36D20 80046520 0880033C */  lui        $v1, %hi(D_8007895A)
/* 36D24 80046524 5A896294 */  lhu        $v0, %lo(D_8007895A)($v1)
/* 36D28 80046528 0800E003 */  jr         $ra
/* 36D2C 8004652C 00000000 */   nop
.size func_80046520, . - func_80046520

glabel func_80046530
/* 36D30 80046530 0880033C */  lui        $v1, %hi(D_8007895C)
/* 36D34 80046534 5C896294 */  lhu        $v0, %lo(D_8007895C)($v1)
/* 36D38 80046538 0800E003 */  jr         $ra
/* 36D3C 8004653C 00000000 */   nop
.size func_80046530, . - func_80046530

glabel func_80046540
/* 36D40 80046540 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 36D44 80046544 1C00BEAF */  sw         $fp, 0x1C($sp)
/* 36D48 80046548 21F0A003 */  addu       $fp, $sp, $zero
/* 36D4C 8004654C 1000B0AF */  sw         $s0, 0x10($sp)
/* 36D50 80046550 21808000 */  addu       $s0, $a0, $zero
/* 36D54 80046554 2000BFAF */  sw         $ra, 0x20($sp)
/* 36D58 80046558 1800B2AF */  sw         $s2, 0x18($sp)
/* 36D5C 8004655C B566000C */  jal        strlen
/* 36D60 80046560 1400B1AF */   sw        $s1, 0x14($sp)
/* 36D64 80046564 01004224 */  addiu      $v0, $v0, 0x1
/* 36D68 80046568 C0100200 */  sll        $v0, $v0, 3
/* 36D6C 8004656C C2100200 */  srl        $v0, $v0, 3
/* 36D70 80046570 07004224 */  addiu      $v0, $v0, 0x7
/* 36D74 80046574 C2100200 */  srl        $v0, $v0, 3
/* 36D78 80046578 C0100200 */  sll        $v0, $v0, 3
/* 36D7C 8004657C 23E8A203 */  subu       $sp, $sp, $v0
/* 36D80 80046580 1000B127 */  addiu      $s1, $sp, 0x10
/* 36D84 80046584 21202002 */  addu       $a0, $s1, $zero
/* 36D88 80046588 0AE4000C */  jal        func_80039028
/* 36D8C 8004658C 21280002 */   addu      $a1, $s0, $zero
/* 36D90 80046590 21202002 */  addu       $a0, $s1, $zero
/* 36D94 80046594 8619010C */  jal        strrchr
/* 36D98 80046598 2E000524 */   addiu     $a1, $zero, 0x2E
/* 36D9C 8004659C 02004010 */  beqz       $v0, .L800465A8
/* 36DA0 800465A0 00000000 */   nop
/* 36DA4 800465A4 000040A0 */  sb         $zero, 0x0($v0)
.L800465A8:
/* 36DA8 800465A8 0880023C */  lui        $v0, %hi(D_80078940)
/* 36DAC 800465AC 40894224 */  addiu      $v0, $v0, %lo(D_80078940)
/* 36DB0 800465B0 18004394 */  lhu        $v1, 0x18($v0)
/* 36DB4 800465B4 00000000 */  nop
/* 36DB8 800465B8 0E006010 */  beqz       $v1, .L800465F4
/* 36DBC 800465BC 21800000 */   addu      $s0, $zero, $zero
/* 36DC0 800465C0 21904000 */  addu       $s2, $v0, $zero
.L800465C4:
/* 36DC4 800465C4 8A19010C */  jal        func_80046628
/* 36DC8 800465C8 FFFF0432 */   andi      $a0, $s0, 0xFFFF
/* 36DCC 800465CC 21204000 */  addu       $a0, $v0, $zero
/* 36DD0 800465D0 41E0000C */  jal        strcmp
/* 36DD4 800465D4 21282002 */   addu      $a1, $s1, $zero
/* 36DD8 800465D8 07004010 */  beqz       $v0, .L800465F8
/* 36DDC 800465DC 21100002 */   addu      $v0, $s0, $zero
/* 36DE0 800465E0 18004296 */  lhu        $v0, 0x18($s2)
/* 36DE4 800465E4 01001026 */  addiu      $s0, $s0, 0x1
/* 36DE8 800465E8 2A100202 */  slt        $v0, $s0, $v0
/* 36DEC 800465EC F5FF4014 */  bnez       $v0, .L800465C4
/* 36DF0 800465F0 00000000 */   nop
.L800465F4:
/* 36DF4 800465F4 FFFF0224 */  addiu      $v0, $zero, -0x1
.L800465F8:
/* 36DF8 800465F8 21E8C003 */  addu       $sp, $fp, $zero
/* 36DFC 800465FC 2000BF8F */  lw         $ra, 0x20($sp)
/* 36E00 80046600 1C00BE8F */  lw         $fp, 0x1C($sp)
/* 36E04 80046604 1800B28F */  lw         $s2, 0x18($sp)
/* 36E08 80046608 1400B18F */  lw         $s1, 0x14($sp)
/* 36E0C 8004660C 1000B08F */  lw         $s0, 0x10($sp)
/* 36E10 80046610 0800E003 */  jr         $ra
/* 36E14 80046614 2800BD27 */   addiu     $sp, $sp, 0x28
.size func_80046540, . - func_80046540
