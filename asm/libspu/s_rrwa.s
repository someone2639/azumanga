.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

glabel SpuReserveReverbWorkArea
/* 36AE0 800462E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 36AE4 800462E4 0A008010 */  beqz       $a0, .L80046310
/* 36AE8 800462E8 1000BFAF */   sw        $ra, 0x10($sp)
/* 36AEC 800462EC 0780043C */  lui        $a0, %hi(D_80069888)
/* 36AF0 800462F0 8898848C */  lw         $a0, %lo(D_80069888)($a0)
/* 36AF4 800462F4 2816010C */  jal        _SpuIsInAllocateArea_
/* 36AF8 800462F8 00000000 */   nop
/* 36AFC 800462FC 04004014 */  bnez       $v0, .L80046310
/* 36B00 80046300 01000224 */   addiu     $v0, $zero, 0x1
/* 36B04 80046304 0780013C */  lui        $at, %hi(D_80069884)
/* 36B08 80046308 C7180108 */  j          S_RRWA_OBJ_3C
/* 36B0C 8004630C 849822AC */   sw        $v0, %lo(D_80069884)($at)
.L80046310:
/* 36B10 80046310 0780013C */  lui        $at, %hi(D_80069884)
/* 36B14 80046314 849820AC */  sw         $zero, %lo(D_80069884)($at)
/* 36B18 80046318 21100000 */  addu       $v0, $zero, $zero
.size SpuReserveReverbWorkArea, . - SpuReserveReverbWorkArea

glabel S_RRWA_OBJ_3C
/* 36B1C 8004631C 1000BF8F */  lw         $ra, 0x10($sp)
/* 36B20 80046320 1800BD27 */  addiu      $sp, $sp, 0x18
/* 36B24 80046324 0800E003 */  jr         $ra
/* 36B28 80046328 00000000 */   nop
/* 36B2C 8004632C 00000000 */  nop
.size S_RRWA_OBJ_3C, . - S_RRWA_OBJ_3C
