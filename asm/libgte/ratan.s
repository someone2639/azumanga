.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

glabel ratan2
/* F3E8 8001EBE8 21300000 */  addu       $a2, $zero, $zero
/* F3EC 8001EBEC 0300A104 */  bgez       $a1, .L8001EBFC
/* F3F0 8001EBF0 21380000 */   addu      $a3, $zero, $zero
/* F3F4 8001EBF4 01000624 */  addiu      $a2, $zero, 0x1
/* F3F8 8001EBF8 23280500 */  negu       $a1, $a1
.L8001EBFC:
/* F3FC 8001EBFC 03008104 */  bgez       $a0, .L8001EC0C
/* F400 8001EC00 00000000 */   nop
/* F404 8001EC04 01000724 */  addiu      $a3, $zero, 0x1
/* F408 8001EC08 23200400 */  negu       $a0, $a0
.L8001EC0C:
/* F40C 8001EC0C 0400A014 */  bnez       $a1, .L8001EC20
/* F410 8001EC10 2A108500 */   slt       $v0, $a0, $a1
/* F414 8001EC14 4F008010 */  beqz       $a0, .L8001ED54
/* F418 8001EC18 21100000 */   addu      $v0, $zero, $zero
/* F41C 8001EC1C 2A108500 */  slt        $v0, $a0, $a1
.L8001EC20:
/* F420 8001EC20 23004010 */  beqz       $v0, .L8001ECB0
/* F424 8001EC24 E07F023C */   lui       $v0, (0x7FE00000 >> 16)
/* F428 8001EC28 24108200 */  and        $v0, $a0, $v0
/* F42C 8001EC2C 0E004010 */  beqz       $v0, .L8001EC68
/* F430 8001EC30 83120500 */   sra       $v0, $a1, 10
/* F434 8001EC34 1A008200 */  div        $zero, $a0, $v0
/* F438 8001EC38 02004014 */  bnez       $v0, .L8001EC44
/* F43C 8001EC3C 00000000 */   nop
/* F440 8001EC40 0D000700 */  break      7
.L8001EC44:
/* F444 8001EC44 FFFF0124 */  addiu      $at, $zero, -0x1
/* F448 8001EC48 04004114 */  bne        $v0, $at, .L8001EC5C
/* F44C 8001EC4C 0080013C */   lui       $at, (0x80000000 >> 16)
/* F450 8001EC50 02008114 */  bne        $a0, $at, .L8001EC5C
/* F454 8001EC54 00000000 */   nop
/* F458 8001EC58 0D000600 */  break      6
.L8001EC5C:
/* F45C 8001EC5C 12200000 */  mflo       $a0
/* F460 8001EC60 277B0008 */  j          RATAN_OBJ_B4
/* F464 8001EC64 40100400 */   sll       $v0, $a0, 1
.L8001EC68:
/* F468 8001EC68 80120400 */  sll        $v0, $a0, 10
/* F46C 8001EC6C 1A004500 */  div        $zero, $v0, $a1
/* F470 8001EC70 0200A014 */  bnez       $a1, .L8001EC7C
/* F474 8001EC74 00000000 */   nop
/* F478 8001EC78 0D000700 */  break      7
.L8001EC7C:
/* F47C 8001EC7C FFFF0124 */  addiu      $at, $zero, -0x1
/* F480 8001EC80 0400A114 */  bne        $a1, $at, .L8001EC94
/* F484 8001EC84 0080013C */   lui       $at, (0x80000000 >> 16)
/* F488 8001EC88 02004114 */  bne        $v0, $at, .L8001EC94
/* F48C 8001EC8C 00000000 */   nop
/* F490 8001EC90 0D000600 */  break      6
.L8001EC94:
/* F494 8001EC94 12200000 */  mflo       $a0
/* F498 8001EC98 40100400 */  sll        $v0, $a0, 1
.size ratan2, . - ratan2

glabel RATAN_OBJ_B4
/* F49C 8001EC9C 0680033C */  lui        $v1, %hi(D_80064804)
/* F4A0 8001ECA0 21186200 */  addu       $v1, $v1, $v0
/* F4A4 8001ECA4 04486384 */  lh         $v1, %lo(D_80064804)($v1)
/* F4A8 8001ECA8 4E7B0008 */  j          RATAN_OBJ_150
/* F4AC 8001ECAC 00000000 */   nop
.L8001ECB0:
/* F4B0 8001ECB0 2410A200 */  and        $v0, $a1, $v0
/* F4B4 8001ECB4 0E004010 */  beqz       $v0, .L8001ECF0
/* F4B8 8001ECB8 83120400 */   sra       $v0, $a0, 10
/* F4BC 8001ECBC 1A00A200 */  div        $zero, $a1, $v0
/* F4C0 8001ECC0 02004014 */  bnez       $v0, .L8001ECCC
/* F4C4 8001ECC4 00000000 */   nop
/* F4C8 8001ECC8 0D000700 */  break      7
.L8001ECCC:
/* F4CC 8001ECCC FFFF0124 */  addiu      $at, $zero, -0x1
/* F4D0 8001ECD0 04004114 */  bne        $v0, $at, .L8001ECE4
/* F4D4 8001ECD4 0080013C */   lui       $at, (0x80000000 >> 16)
/* F4D8 8001ECD8 0200A114 */  bne        $a1, $at, .L8001ECE4
/* F4DC 8001ECDC 00000000 */   nop
/* F4E0 8001ECE0 0D000600 */  break      6
.L8001ECE4:
/* F4E4 8001ECE4 12200000 */  mflo       $a0
/* F4E8 8001ECE8 497B0008 */  j          RATAN_OBJ_13C
/* F4EC 8001ECEC 40100400 */   sll       $v0, $a0, 1
.L8001ECF0:
/* F4F0 8001ECF0 80120500 */  sll        $v0, $a1, 10
/* F4F4 8001ECF4 1A004400 */  div        $zero, $v0, $a0
/* F4F8 8001ECF8 02008014 */  bnez       $a0, .L8001ED04
/* F4FC 8001ECFC 00000000 */   nop
/* F500 8001ED00 0D000700 */  break      7
.L8001ED04:
/* F504 8001ED04 FFFF0124 */  addiu      $at, $zero, -0x1
/* F508 8001ED08 04008114 */  bne        $a0, $at, .L8001ED1C
/* F50C 8001ED0C 0080013C */   lui       $at, (0x80000000 >> 16)
/* F510 8001ED10 02004114 */  bne        $v0, $at, .L8001ED1C
/* F514 8001ED14 00000000 */   nop
/* F518 8001ED18 0D000600 */  break      6
.L8001ED1C:
/* F51C 8001ED1C 12200000 */  mflo       $a0
/* F520 8001ED20 40100400 */  sll        $v0, $a0, 1
.size RATAN_OBJ_B4, . - RATAN_OBJ_B4

glabel RATAN_OBJ_13C
/* F524 8001ED24 0680033C */  lui        $v1, %hi(D_80064804)
/* F528 8001ED28 21186200 */  addu       $v1, $v1, $v0
/* F52C 8001ED2C 04486384 */  lh         $v1, %lo(D_80064804)($v1)
/* F530 8001ED30 00040224 */  addiu      $v0, $zero, 0x400
/* F534 8001ED34 23184300 */  subu       $v1, $v0, $v1
.size RATAN_OBJ_13C, . - RATAN_OBJ_13C

glabel RATAN_OBJ_150
/* F538 8001ED38 0200C010 */  beqz       $a2, .L8001ED44
/* F53C 8001ED3C 00080224 */   addiu     $v0, $zero, 0x800
/* F540 8001ED40 23184300 */  subu       $v1, $v0, $v1
.L8001ED44:
/* F544 8001ED44 0300E010 */  beqz       $a3, .L8001ED54
/* F548 8001ED48 21106000 */   addu      $v0, $v1, $zero
/* F54C 8001ED4C 23180300 */  negu       $v1, $v1
/* F550 8001ED50 21106000 */  addu       $v0, $v1, $zero
.L8001ED54:
/* F554 8001ED54 0800E003 */  jr         $ra
/* F558 8001ED58 00000000 */   nop
/* F55C 8001ED5C 00000000 */  nop
/* F560 8001ED60 00000000 */  nop
/* F564 8001ED64 00000000 */  nop
.size RATAN_OBJ_150, . - RATAN_OBJ_150
