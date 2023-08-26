.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

glabel note2pitch
/* 38350 80047B50 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 38354 80047B54 0880033C */  lui        $v1, %hi(D_80078781)
/* 38358 80047B58 81876324 */  addiu      $v1, $v1, %lo(D_80078781)
/* 3835C 80047B5C 1000BFAF */  sw         $ra, 0x10($sp)
/* 38360 80047B60 00006790 */  lbu        $a3, 0x0($v1)
/* 38364 80047B64 00000000 */  nop
/* 38368 80047B68 FF00E230 */  andi       $v0, $a3, 0xFF
/* 3836C 80047B6C 8000422C */  sltiu      $v0, $v0, 0x80
/* 38370 80047B70 02004014 */  bnez       $v0, .L80047B7C
/* 38374 80047B74 00000000 */   nop
/* 38378 80047B78 7F000724 */  addiu      $a3, $zero, 0x7F
.L80047B7C:
/* 3837C 80047B7C F1FF6480 */  lb         $a0, -0xF($v1)
/* 38380 80047B80 FFFF6690 */  lbu        $a2, -0x1($v1)
/* 38384 80047B84 011F010C */  jal        SsPitchFromNote
/* 38388 80047B88 21280000 */   addu      $a1, $zero, $zero
/* 3838C 80047B8C 1000BF8F */  lw         $ra, 0x10($sp)
/* 38390 80047B90 FFFF4230 */  andi       $v0, $v0, 0xFFFF
/* 38394 80047B94 0800E003 */  jr         $ra
/* 38398 80047B98 1800BD27 */   addiu     $sp, $sp, 0x18
.size note2pitch, . - note2pitch

glabel note2pitch2
/* 3839C 80047B9C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 383A0 80047BA0 0880033C */  lui        $v1, %hi(D_80078777)
/* 383A4 80047BA4 77876324 */  addiu      $v1, $v1, %lo(D_80078777)
/* 383A8 80047BA8 00240400 */  sll        $a0, $a0, 16
/* 383AC 80047BAC 002C0500 */  sll        $a1, $a1, 16
/* 383B0 80047BB0 03240400 */  sra        $a0, $a0, 16
/* 383B4 80047BB4 1000BFAF */  sw         $ra, 0x10($sp)
/* 383B8 80047BB8 05006290 */  lbu        $v0, 0x5($v1)
/* 383BC 80047BBC 00006380 */  lb         $v1, 0x0($v1)
/* 383C0 80047BC0 00160200 */  sll        $v0, $v0, 24
/* 383C4 80047BC4 03160200 */  sra        $v0, $v0, 24
/* 383C8 80047BC8 00190300 */  sll        $v1, $v1, 4
/* 383CC 80047BCC 21104300 */  addu       $v0, $v0, $v1
/* 383D0 80047BD0 00140200 */  sll        $v0, $v0, 16
/* 383D4 80047BD4 0880033C */  lui        $v1, %hi(D_80078760)
/* 383D8 80047BD8 6087638C */  lw         $v1, %lo(D_80078760)($v1)
/* 383DC 80047BDC C3120200 */  sra        $v0, $v0, 11
/* 383E0 80047BE0 21104300 */  addu       $v0, $v0, $v1
/* 383E4 80047BE4 04004690 */  lbu        $a2, 0x4($v0)
/* 383E8 80047BE8 05004790 */  lbu        $a3, 0x5($v0)
/* 383EC 80047BEC 011F010C */  jal        SsPitchFromNote
/* 383F0 80047BF0 032C0500 */   sra       $a1, $a1, 16
/* 383F4 80047BF4 1000BF8F */  lw         $ra, 0x10($sp)
/* 383F8 80047BF8 FFFF4230 */  andi       $v0, $v0, 0xFFFF
/* 383FC 80047BFC 0800E003 */  jr         $ra
/* 38400 80047C00 1800BD27 */   addiu     $sp, $sp, 0x18
.size note2pitch2, . - note2pitch2

glabel SsPitchFromNote
/* 38404 80047C04 FF00E730 */  andi       $a3, $a3, 0xFF
/* 38408 80047C08 2138E500 */  addu       $a3, $a3, $a1
/* 3840C 80047C0C 003C0700 */  sll        $a3, $a3, 16
/* 38410 80047C10 033C0700 */  sra        $a3, $a3, 16
/* 38414 80047C14 0200E104 */  bgez       $a3, VM_N2P_OBJ_D0
/* 38418 80047C18 2118E000 */   addu      $v1, $a3, $zero
/* 3841C 80047C1C 7F00E324 */  addiu      $v1, $a3, 0x7F
.size SsPitchFromNote, . - SsPitchFromNote

glabel VM_N2P_OBJ_D0
/* 38420 80047C20 C3190300 */  sra        $v1, $v1, 7
/* 38424 80047C24 21208300 */  addu       $a0, $a0, $v1
/* 38428 80047C28 FF00C230 */  andi       $v0, $a2, 0xFF
/* 3842C 80047C2C 23208200 */  subu       $a0, $a0, $v0
/* 38430 80047C30 21288000 */  addu       $a1, $a0, $zero
/* 38434 80047C34 C0190300 */  sll        $v1, $v1, 7
/* 38438 80047C38 2338E300 */  subu       $a3, $a3, $v1
/* 3843C 80047C3C 00140700 */  sll        $v0, $a3, 16
/* 38440 80047C40 0A004104 */  bgez       $v0, .L80047C6C
/* 38444 80047C44 2140E000 */   addu      $t0, $a3, $zero
/* 38448 80047C48 8000E224 */  addiu      $v0, $a3, 0x80
/* 3844C 80047C4C 21404000 */  addu       $t0, $v0, $zero
/* 38450 80047C50 00140200 */  sll        $v0, $v0, 16
/* 38454 80047C54 03140200 */  sra        $v0, $v0, 16
/* 38458 80047C58 02004104 */  bgez       $v0, .L80047C64
/* 3845C 80047C5C FFFF8424 */   addiu     $a0, $a0, -0x1
/* 38460 80047C60 7F004224 */  addiu      $v0, $v0, 0x7F
.L80047C64:
/* 38464 80047C64 C3110200 */  sra        $v0, $v0, 7
/* 38468 80047C68 21288200 */  addu       $a1, $a0, $v0
.L80047C6C:
/* 3846C 80047C6C AA2A033C */  lui        $v1, (0x2AAAAAAB >> 16)
/* 38470 80047C70 ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
/* 38474 80047C74 00140500 */  sll        $v0, $a1, 16
/* 38478 80047C78 03240200 */  sra        $a0, $v0, 16
/* 3847C 80047C7C 18008300 */  mult       $a0, $v1
/* 38480 80047C80 C3170200 */  sra        $v0, $v0, 31
/* 38484 80047C84 10480000 */  mfhi       $t1
/* 38488 80047C88 43180900 */  sra        $v1, $t1, 1
/* 3848C 80047C8C 23186200 */  subu       $v1, $v1, $v0
/* 38490 80047C90 FEFF6624 */  addiu      $a2, $v1, -0x2
/* 38494 80047C94 40100300 */  sll        $v0, $v1, 1
/* 38498 80047C98 21104300 */  addu       $v0, $v0, $v1
/* 3849C 80047C9C 80100200 */  sll        $v0, $v0, 2
/* 384A0 80047CA0 23208200 */  subu       $a0, $a0, $v0
/* 384A4 80047CA4 00140400 */  sll        $v0, $a0, 16
/* 384A8 80047CA8 03004104 */  bgez       $v0, .L80047CB8
/* 384AC 80047CAC 21288000 */   addu      $a1, $a0, $zero
/* 384B0 80047CB0 0C008524 */  addiu      $a1, $a0, 0xC
/* 384B4 80047CB4 FDFF6624 */  addiu      $a2, $v1, -0x3
.L80047CB8:
/* 384B8 80047CB8 001C0500 */  sll        $v1, $a1, 16
/* 384BC 80047CBC C31B0300 */  sra        $v1, $v1, 15
/* 384C0 80047CC0 00140800 */  sll        $v0, $t0, 16
/* 384C4 80047CC4 C3130200 */  sra        $v0, $v0, 15
/* 384C8 80047CC8 0780013C */  lui        $at, %hi(D_8006A0FC)
/* 384CC 80047CCC 21082300 */  addu       $at, $at, $v1
/* 384D0 80047CD0 FCA02394 */  lhu        $v1, %lo(D_8006A0FC)($at)
/* 384D4 80047CD4 0780013C */  lui        $at, %hi(D_8006A114)
/* 384D8 80047CD8 21082200 */  addu       $at, $at, $v0
/* 384DC 80047CDC 14A12294 */  lhu        $v0, %lo(D_8006A114)($at)
/* 384E0 80047CE0 00000000 */  nop
/* 384E4 80047CE4 18006200 */  mult       $v1, $v0
/* 384E8 80047CE8 00140600 */  sll        $v0, $a2, 16
/* 384EC 80047CEC 03140200 */  sra        $v0, $v0, 16
/* 384F0 80047CF0 12480000 */  mflo       $t1
/* 384F4 80047CF4 03004004 */  bltz       $v0, .L80047D04
/* 384F8 80047CF8 032C0900 */   sra       $a1, $t1, 16
/* 384FC 80047CFC 471F0108 */  j          VM_N2P_OBJ_1CC
/* 38500 80047D00 FF3F0524 */   addiu     $a1, $zero, 0x3FFF
.L80047D04:
/* 38504 80047D04 23200200 */  negu       $a0, $v0
/* 38508 80047D08 FFFF8324 */  addiu      $v1, $a0, -0x1
/* 3850C 80047D0C 01000224 */  addiu      $v0, $zero, 0x1
/* 38510 80047D10 04106200 */  sllv       $v0, $v0, $v1
/* 38514 80047D14 2128A200 */  addu       $a1, $a1, $v0
/* 38518 80047D18 06288500 */  srlv       $a1, $a1, $a0
.size VM_N2P_OBJ_D0, . - VM_N2P_OBJ_D0

glabel VM_N2P_OBJ_1CC
/* 3851C 80047D1C 0800E003 */  jr         $ra
/* 38520 80047D20 FFFFA230 */   andi      $v0, $a1, 0xFFFF
/* 38524 80047D24 00000000 */  nop
/* 38528 80047D28 00000000 */  nop
/* 3852C 80047D2C 00000000 */  nop
.size VM_N2P_OBJ_1CC, . - VM_N2P_OBJ_1CC
