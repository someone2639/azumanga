.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

glabel strrchr
/* 36E18 80046618 A0000A24 */  addiu      $t2, $zero, 0xA0
/* 36E1C 8004661C 08004001 */  jr         $t2
/* 36E20 80046620 1F000924 */   addiu     $t1, $zero, 0x1F
/* 36E24 80046624 00000000 */  nop
.size strrchr, . - strrchr

glabel func_80046628
/* 36E28 80046628 FFFF8430 */  andi       $a0, $a0, 0xFFFF
/* 36E2C 8004662C 0880033C */  lui        $v1, %hi(D_80078940)
/* 36E30 80046630 40896324 */  addiu      $v1, $v1, %lo(D_80078940)
/* 36E34 80046634 0800628C */  lw         $v0, 0x8($v1)
/* 36E38 80046638 C0200400 */  sll        $a0, $a0, 3
/* 36E3C 8004663C 21208200 */  addu       $a0, $a0, $v0
/* 36E40 80046640 00008594 */  lhu        $a1, 0x0($a0)
/* 36E44 80046644 0400628C */  lw         $v0, 0x4($v1)
/* 36E48 80046648 0800E003 */  jr         $ra
/* 36E4C 8004664C 21104500 */   addu      $v0, $v0, $a1
.size func_80046628, . - func_80046628
