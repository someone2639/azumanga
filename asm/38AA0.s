.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

glabel vmNoiseOff
/* 38AA0 800482A0 FF008430 */  andi       $a0, $a0, 0xFF
/* 38AA4 800482A4 C0100400 */  sll        $v0, $a0, 3
/* 38AA8 800482A8 23104400 */  subu       $v0, $v0, $a0
/* 38AAC 800482AC C0100200 */  sll        $v0, $v0, 3
/* 38AB0 800482B0 0780013C */  lui        $at, %hi(D_80077F5D)
/* 38AB4 800482B4 21082200 */  addu       $at, $at, $v0
/* 38AB8 800482B8 5D7F20A0 */  sb         $zero, %lo(D_80077F5D)($at)
/* 38ABC 800482BC 0780013C */  lui        $at, %hi(D_80077F40)
/* 38AC0 800482C0 21082200 */  addu       $at, $at, $v0
/* 38AC4 800482C4 407F20A4 */  sh         $zero, %lo(D_80077F40)($at)
/* 38AC8 800482C8 0780013C */  lui        $at, %hi(D_80077F44)
/* 38ACC 800482CC 21082200 */  addu       $at, $at, $v0
/* 38AD0 800482D0 0800E003 */  jr         $ra
/* 38AD4 800482D4 447F20A4 */   sh        $zero, %lo(D_80077F44)($at)
/* 38AD8 800482D8 00000000 */  nop
/* 38ADC 800482DC 00000000 */  nop
.size vmNoiseOff, . - vmNoiseOff
