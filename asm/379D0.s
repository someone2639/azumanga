.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

glabel func_800471D0
/* 379D0 800471D0 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 379D4 800471D4 1000B0AF */  sw         $s0, 0x10($sp)
/* 379D8 800471D8 4C00B08F */  lw         $s0, 0x4C($sp)
/* 379DC 800471DC 1400B1AF */  sw         $s1, 0x14($sp)
/* 379E0 800471E0 5000B18F */  lw         $s1, 0x50($sp)
/* 379E4 800471E4 0780023C */  lui        $v0, %hi(D_8007769C)
/* 379E8 800471E8 9C76428C */  lw         $v0, %lo(D_8007769C)($v0)
/* 379EC 800471EC 3000BEAF */  sw         $fp, 0x30($sp)
/* 379F0 800471F0 21F08000 */  addu       $fp, $a0, $zero
/* 379F4 800471F4 2800B6AF */  sw         $s6, 0x28($sp)
/* 379F8 800471F8 21B0A000 */  addu       $s6, $a1, $zero
/* 379FC 800471FC 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 37A00 80047200 2198C000 */  addu       $s3, $a2, $zero
/* 37A04 80047204 2400B5AF */  sw         $s5, 0x24($sp)
/* 37A08 80047208 21A8E000 */  addu       $s5, $a3, $zero
/* 37A0C 8004720C 2C00B7AF */  sw         $s7, 0x2C($sp)
/* 37A10 80047210 4800B797 */  lhu        $s7, 0x48($sp)
/* 37A14 80047214 01000324 */  addiu      $v1, $zero, 0x1
/* 37A18 80047218 3400BFAF */  sw         $ra, 0x34($sp)
/* 37A1C 8004721C 2000B4AF */  sw         $s4, 0x20($sp)
/* 37A20 80047220 1800B2AF */  sw         $s2, 0x18($sp)
/* 37A24 80047224 21900002 */  addu       $s2, $s0, $zero
/* 37A28 80047228 03004314 */  bne        $v0, $v1, .L80047238
/* 37A2C 8004722C 21A02002 */   addu      $s4, $s1, $zero
/* 37A30 80047230 431D0108 */  j          .L8004750C
/* 37A34 80047234 FFFF0224 */   addiu     $v0, $zero, -0x1
.L80047238:
/* 37A38 80047238 0780013C */  lui        $at, %hi(D_8007769C)
/* 37A3C 8004723C 9C7623AC */  sw         $v1, %lo(D_8007769C)($at)
/* 37A40 80047240 00240400 */  sll        $a0, $a0, 16
/* 37A44 80047244 03240400 */  sra        $a0, $a0, 16
/* 37A48 80047248 002C0500 */  sll        $a1, $a1, 16
/* 37A4C 8004724C 730F010C */  jal        func_80043DCC
/* 37A50 80047250 032C0500 */   sra       $a1, $a1, 16
/* 37A54 80047254 66004014 */  bnez       $v0, .L800473F0
/* 37A58 80047258 21000224 */   addiu     $v0, $zero, 0x21
/* 37A5C 8004725C 0880053C */  lui        $a1, %hi(D_80078784)
/* 37A60 80047260 8487A524 */  addiu      $a1, $a1, %lo(D_80078784)
/* 37A64 80047264 0000A2A4 */  sh         $v0, 0x0($a1)
/* 37A68 80047268 00141000 */  sll        $v0, $s0, 16
/* 37A6C 8004726C 031C0200 */  sra        $v1, $v0, 16
/* 37A70 80047270 00141100 */  sll        $v0, $s1, 16
/* 37A74 80047274 03240200 */  sra        $a0, $v0, 16
/* 37A78 80047278 EEFFB5A0 */  sb         $s5, -0x12($a1)
/* 37A7C 8004727C EFFFB7A0 */  sb         $s7, -0x11($a1)
/* 37A80 80047280 05006414 */  bne        $v1, $a0, .L80047298
/* 37A84 80047284 F8FFB3A0 */   sb        $s3, -0x8($a1)
/* 37A88 80047288 40000224 */  addiu      $v0, $zero, 0x40
/* 37A8C 8004728C F1FFA2A0 */  sb         $v0, -0xF($a1)
/* 37A90 80047290 C61C0108 */  j          .L80047318
/* 37A94 80047294 F0FFB2A0 */   sb        $s2, -0x10($a1)
.L80047298:
/* 37A98 80047298 2A108300 */  slt        $v0, $a0, $v1
/* 37A9C 8004729C 0E004010 */  beqz       $v0, .L800472D8
/* 37AA0 800472A0 80110400 */   sll       $v0, $a0, 6
/* 37AA4 800472A4 1A004300 */  div        $zero, $v0, $v1
/* 37AA8 800472A8 02006014 */  bnez       $v1, .L800472B4
/* 37AAC 800472AC 00000000 */   nop
/* 37AB0 800472B0 0D000700 */  break      7
.L800472B4:
/* 37AB4 800472B4 FFFF0124 */  addiu      $at, $zero, -0x1
/* 37AB8 800472B8 04006114 */  bne        $v1, $at, .L800472CC
/* 37ABC 800472BC 0080013C */   lui       $at, (0x80000000 >> 16)
/* 37AC0 800472C0 02004114 */  bne        $v0, $at, .L800472CC
/* 37AC4 800472C4 00000000 */   nop
/* 37AC8 800472C8 0D000600 */  break      6
.L800472CC:
/* 37ACC 800472CC 12100000 */  mflo       $v0
/* 37AD0 800472D0 C51C0108 */  j          .L80047314
/* 37AD4 800472D4 F0FFB2A0 */   sb        $s2, -0x10($a1)
.L800472D8:
/* 37AD8 800472D8 80190300 */  sll        $v1, $v1, 6
/* 37ADC 800472DC 1A006400 */  div        $zero, $v1, $a0
/* 37AE0 800472E0 02008014 */  bnez       $a0, .L800472EC
/* 37AE4 800472E4 00000000 */   nop
/* 37AE8 800472E8 0D000700 */  break      7
.L800472EC:
/* 37AEC 800472EC FFFF0124 */  addiu      $at, $zero, -0x1
/* 37AF0 800472F0 04008114 */  bne        $a0, $at, .L80047304
/* 37AF4 800472F4 0080013C */   lui       $at, (0x80000000 >> 16)
/* 37AF8 800472F8 02006114 */  bne        $v1, $at, .L80047304
/* 37AFC 800472FC 00000000 */   nop
/* 37B00 80047300 0D000600 */  break      6
.L80047304:
/* 37B04 80047304 12180000 */  mflo       $v1
/* 37B08 80047308 7F000224 */  addiu      $v0, $zero, 0x7F
/* 37B0C 8004730C F0FFB4A0 */  sb         $s4, -0x10($a1)
/* 37B10 80047310 23104300 */  subu       $v0, $v0, $v1
.L80047314:
/* 37B14 80047314 F1FFA2A0 */  sb         $v0, -0xF($a1)
.L80047318:
/* 37B18 80047318 001C1600 */  sll        $v1, $s6, 16
/* 37B1C 8004731C 0880023C */  lui        $v0, %hi(D_80078754)
/* 37B20 80047320 5487428C */  lw         $v0, %lo(D_80078754)($v0)
/* 37B24 80047324 031B0300 */  sra        $v1, $v1, 12
/* 37B28 80047328 21186200 */  addu       $v1, $v1, $v0
/* 37B2C 8004732C 01006290 */  lbu        $v0, 0x1($v1)
/* 37B30 80047330 0880103C */  lui        $s0, %hi(D_8007877A)
/* 37B34 80047334 7A871026 */  addiu      $s0, $s0, %lo(D_8007877A)
/* 37B38 80047338 000002A2 */  sb         $v0, 0x0($s0)
/* 37B3C 8004733C 02000292 */  lbu        $v0, 0x2($s0)
/* 37B40 80047340 04006490 */  lbu        $a0, 0x4($v1)
/* 37B44 80047344 00160200 */  sll        $v0, $v0, 24
/* 37B48 80047348 010004A2 */  sb         $a0, 0x1($s0)
/* 37B4C 8004734C 00006490 */  lbu        $a0, 0x0($v1)
/* 37B50 80047350 FDFF0382 */  lb         $v1, -0x3($s0)
/* 37B54 80047354 03160200 */  sra        $v0, $v0, 24
/* 37B58 80047358 00190300 */  sll        $v1, $v1, 4
/* 37B5C 8004735C 21104300 */  addu       $v0, $v0, $v1
/* 37B60 80047360 00140200 */  sll        $v0, $v0, 16
/* 37B64 80047364 F6FF04A2 */  sb         $a0, -0xA($s0)
/* 37B68 80047368 0880033C */  lui        $v1, %hi(D_80078760)
/* 37B6C 8004736C 6087638C */  lw         $v1, %lo(D_80078760)($v1)
/* 37B70 80047370 C3120200 */  sra        $v0, $v0, 11
/* 37B74 80047374 21104300 */  addu       $v0, $v0, $v1
/* 37B78 80047378 00004390 */  lbu        $v1, 0x0($v0)
/* 37B7C 8004737C 00000000 */  nop
/* 37B80 80047380 050003A2 */  sb         $v1, 0x5($s0)
/* 37B84 80047384 16004494 */  lhu        $a0, 0x16($v0)
/* 37B88 80047388 00000000 */  nop
/* 37B8C 8004738C 0C0004A6 */  sh         $a0, 0xC($s0)
/* 37B90 80047390 02004390 */  lbu        $v1, 0x2($v0)
/* 37B94 80047394 00000000 */  nop
/* 37B98 80047398 030003A2 */  sb         $v1, 0x3($s0)
/* 37B9C 8004739C 03004390 */  lbu        $v1, 0x3($v0)
/* 37BA0 800473A0 00000000 */  nop
/* 37BA4 800473A4 040003A2 */  sb         $v1, 0x4($s0)
/* 37BA8 800473A8 04004390 */  lbu        $v1, 0x4($v0)
/* 37BAC 800473AC 00000000 */  nop
/* 37BB0 800473B0 060003A2 */  sb         $v1, 0x6($s0)
/* 37BB4 800473B4 05004390 */  lbu        $v1, 0x5($v0)
/* 37BB8 800473B8 00240400 */  sll        $a0, $a0, 16
/* 37BBC 800473BC 070003A2 */  sb         $v1, 0x7($s0)
/* 37BC0 800473C0 01004290 */  lbu        $v0, 0x1($v0)
/* 37BC4 800473C4 03240400 */  sra        $a0, $a0, 16
/* 37BC8 800473C8 09008010 */  beqz       $a0, .L800473F0
/* 37BCC 800473CC 080002A2 */   sb        $v0, 0x8($s0)
/* 37BD0 800473D0 C41D010C */  jal        func_80047710
/* 37BD4 800473D4 00000000 */   nop
/* 37BD8 800473D8 FF005130 */  andi       $s1, $v0, 0xFF
/* 37BDC 800473DC 0880023C */  lui        $v0, %hi(D_80078764)
/* 37BE0 800473E0 64874280 */  lb         $v0, %lo(D_80078764)($v0)
/* 37BE4 800473E4 21202002 */  addu       $a0, $s1, $zero
/* 37BE8 800473E8 05008214 */  bne        $a0, $v0, .L80047400
/* 37BEC 800473EC C0180400 */   sll       $v1, $a0, 3
.L800473F0:
/* 37BF0 800473F0 0780013C */  lui        $at, %hi(D_8007769C)
/* 37BF4 800473F4 9C7620AC */  sw         $zero, %lo(D_8007769C)($at)
/* 37BF8 800473F8 431D0108 */  j          .L8004750C
/* 37BFC 800473FC FFFF0224 */   addiu     $v0, $zero, -0x1
.L80047400:
/* 37C00 80047400 23186400 */  subu       $v1, $v1, $a0
/* 37C04 80047404 C0180300 */  sll        $v1, $v1, 3
/* 37C08 80047408 21000224 */  addiu      $v0, $zero, 0x21
/* 37C0C 8004740C 0E0011A6 */  sh         $s1, 0xE($s0)
/* 37C10 80047410 0780013C */  lui        $at, %hi(D_80077F50)
/* 37C14 80047414 21082300 */  addu       $at, $at, $v1
/* 37C18 80047418 507F22A4 */  sh         $v0, %lo(D_80077F50)($at)
/* 37C1C 8004741C 0780013C */  lui        $at, %hi(D_80077F58)
/* 37C20 80047420 21082300 */  addu       $at, $at, $v1
/* 37C24 80047424 587F3EA4 */  sh         $fp, %lo(D_80077F58)($at)
/* 37C28 80047428 FDFF0292 */  lbu        $v0, -0x3($s0)
/* 37C2C 8004742C 0780013C */  lui        $at, %hi(D_80077F54)
/* 37C30 80047430 21082300 */  addu       $at, $at, $v1
/* 37C34 80047434 547F36A4 */  sh         $s6, %lo(D_80077F54)($at)
/* 37C38 80047438 00160200 */  sll        $v0, $v0, 24
/* 37C3C 8004743C 03160200 */  sra        $v0, $v0, 24
/* 37C40 80047440 0780013C */  lui        $at, %hi(D_80077F52)
/* 37C44 80047444 21082300 */  addu       $at, $at, $v1
/* 37C48 80047448 527F22A4 */  sh         $v0, %lo(D_80077F52)($at)
/* 37C4C 8004744C 0C000296 */  lhu        $v0, 0xC($s0)
/* 37C50 80047450 0780013C */  lui        $at, %hi(D_80077F40)
/* 37C54 80047454 21082300 */  addu       $at, $at, $v1
/* 37C58 80047458 407F22A4 */  sh         $v0, %lo(D_80077F40)($at)
/* 37C5C 8004745C 02000292 */  lbu        $v0, 0x2($s0)
/* 37C60 80047460 0780013C */  lui        $at, %hi(D_80077F4E)
/* 37C64 80047464 21082300 */  addu       $at, $at, $v1
/* 37C68 80047468 4E7F35A4 */  sh         $s5, %lo(D_80077F4E)($at)
/* 37C6C 8004746C 00160200 */  sll        $v0, $v0, 24
/* 37C70 80047470 03160200 */  sra        $v0, $v0, 24
/* 37C74 80047474 0780013C */  lui        $at, %hi(D_80077F56)
/* 37C78 80047478 21082300 */  addu       $at, $at, $v1
/* 37C7C 8004747C 567F22A4 */  sh         $v0, %lo(D_80077F56)($at)
/* 37C80 80047480 FAFF0292 */  lbu        $v0, -0x6($s0)
/* 37C84 80047484 00000000 */  nop
/* 37C88 80047488 00160200 */  sll        $v0, $v0, 24
/* 37C8C 8004748C 03160200 */  sra        $v0, $v0, 24
/* 37C90 80047490 0780013C */  lui        $at, %hi(D_80077F76)
/* 37C94 80047494 21082300 */  addu       $at, $at, $v1
/* 37C98 80047498 767F22A4 */  sh         $v0, %lo(D_80077F76)($at)
/* 37C9C 8004749C FBFF0492 */  lbu        $a0, -0x5($s0)
/* 37CA0 800474A0 01000224 */  addiu      $v0, $zero, 0x1
/* 37CA4 800474A4 0780013C */  lui        $at, %hi(D_80077F5D)
/* 37CA8 800474A8 21082300 */  addu       $at, $at, $v1
/* 37CAC 800474AC 5D7F22A0 */  sb         $v0, %lo(D_80077F5D)($at)
/* 37CB0 800474B0 0780013C */  lui        $at, %hi(D_80077F42)
/* 37CB4 800474B4 21082300 */  addu       $at, $at, $v1
/* 37CB8 800474B8 427F20A4 */  sh         $zero, %lo(D_80077F42)($at)
/* 37CBC 800474BC 0780013C */  lui        $at, %hi(D_80077F4A)
/* 37CC0 800474C0 21082300 */  addu       $at, $at, $v1
/* 37CC4 800474C4 601E010C */  jal        func_80047980
/* 37CC8 800474C8 4A7F24A0 */   sb        $a0, %lo(D_80077F4A)($at)
/* 37CCC 800474CC 0C000386 */  lh         $v1, 0xC($s0)
/* 37CD0 800474D0 FF000224 */  addiu      $v0, $zero, 0xFF
/* 37CD4 800474D4 05006214 */  bne        $v1, $v0, .L800474EC
/* 37CD8 800474D8 FFFFA432 */   andi      $a0, $s5, 0xFFFF
/* 37CDC 800474DC 4C1F010C */  jal        func_80047D30
/* 37CE0 800474E0 21202002 */   addu      $a0, $s1, $zero
/* 37CE4 800474E4 401D0108 */  j          .L80047500
/* 37CE8 800474E8 00000000 */   nop
.L800474EC:
/* 37CEC 800474EC E71E010C */  jal        func_80047B9C
/* 37CF0 800474F0 2128E002 */   addu      $a1, $s7, $zero
/* 37CF4 800474F4 01000424 */  addiu      $a0, $zero, 0x1
/* 37CF8 800474F8 B820010C */  jal        func_800482E0
/* 37CFC 800474FC FFFF4530 */   andi      $a1, $v0, 0xFFFF
.L80047500:
/* 37D00 80047500 0780013C */  lui        $at, %hi(D_8007769C)
/* 37D04 80047504 9C7620AC */  sw         $zero, %lo(D_8007769C)($at)
/* 37D08 80047508 21102002 */  addu       $v0, $s1, $zero
.L8004750C:
/* 37D0C 8004750C 3400BF8F */  lw         $ra, 0x34($sp)
/* 37D10 80047510 3000BE8F */  lw         $fp, 0x30($sp)
/* 37D14 80047514 2C00B78F */  lw         $s7, 0x2C($sp)
/* 37D18 80047518 2800B68F */  lw         $s6, 0x28($sp)
/* 37D1C 8004751C 2400B58F */  lw         $s5, 0x24($sp)
/* 37D20 80047520 2000B48F */  lw         $s4, 0x20($sp)
/* 37D24 80047524 1C00B38F */  lw         $s3, 0x1C($sp)
/* 37D28 80047528 1800B28F */  lw         $s2, 0x18($sp)
/* 37D2C 8004752C 1400B18F */  lw         $s1, 0x14($sp)
/* 37D30 80047530 1000B08F */  lw         $s0, 0x10($sp)
/* 37D34 80047534 0800E003 */  jr         $ra
/* 37D38 80047538 3800BD27 */   addiu     $sp, $sp, 0x38
.size func_800471D0, . - func_800471D0

glabel func_8004753C
/* 37D3C 8004753C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 37D40 80047540 1000B0AF */  sw         $s0, 0x10($sp)
/* 37D44 80047544 21808000 */  addu       $s0, $a0, $zero
/* 37D48 80047548 0780023C */  lui        $v0, %hi(D_8007769C)
/* 37D4C 8004754C 9C76428C */  lw         $v0, %lo(D_8007769C)($v0)
/* 37D50 80047550 2800A88F */  lw         $t0, 0x28($sp)
/* 37D54 80047554 01000324 */  addiu      $v1, $zero, 0x1
/* 37D58 80047558 43004310 */  beq        $v0, $v1, .L80047668
/* 37D5C 8004755C 1400BFAF */   sw        $ra, 0x14($sp)
/* 37D60 80047560 0780013C */  lui        $at, %hi(D_8007769C)
/* 37D64 80047564 9C7623AC */  sw         $v1, %lo(D_8007769C)($at)
/* 37D68 80047568 FFFF0232 */  andi       $v0, $s0, 0xFFFF
/* 37D6C 8004756C 1800422C */  sltiu      $v0, $v0, 0x18
/* 37D70 80047570 3B004010 */  beqz       $v0, .L80047660
/* 37D74 80047574 001C0400 */   sll       $v1, $a0, 16
/* 37D78 80047578 031C0300 */  sra        $v1, $v1, 16
/* 37D7C 8004757C C0100300 */  sll        $v0, $v1, 3
/* 37D80 80047580 23104300 */  subu       $v0, $v0, $v1
/* 37D84 80047584 C0200200 */  sll        $a0, $v0, 3
/* 37D88 80047588 0780033C */  lui        $v1, %hi(D_80077F58)
/* 37D8C 8004758C 21186400 */  addu       $v1, $v1, $a0
/* 37D90 80047590 587F6384 */  lh         $v1, %lo(D_80077F58)($v1)
/* 37D94 80047594 00140500 */  sll        $v0, $a1, 16
/* 37D98 80047598 03140200 */  sra        $v0, $v0, 16
/* 37D9C 8004759C 1D006214 */  bne        $v1, $v0, .L80047614
/* 37DA0 800475A0 00140600 */   sll       $v0, $a2, 16
/* 37DA4 800475A4 0780033C */  lui        $v1, %hi(D_80077F54)
/* 37DA8 800475A8 21186400 */  addu       $v1, $v1, $a0
/* 37DAC 800475AC 547F6384 */  lh         $v1, %lo(D_80077F54)($v1)
/* 37DB0 800475B0 03140200 */  sra        $v0, $v0, 16
/* 37DB4 800475B4 17006214 */  bne        $v1, $v0, .L80047614
/* 37DB8 800475B8 00140700 */   sll       $v0, $a3, 16
/* 37DBC 800475BC 0780033C */  lui        $v1, %hi(D_80077F56)
/* 37DC0 800475C0 21186400 */  addu       $v1, $v1, $a0
/* 37DC4 800475C4 567F6384 */  lh         $v1, %lo(D_80077F56)($v1)
/* 37DC8 800475C8 03140200 */  sra        $v0, $v0, 16
/* 37DCC 800475CC 11006214 */  bne        $v1, $v0, .L80047614
/* 37DD0 800475D0 00140800 */   sll       $v0, $t0, 16
/* 37DD4 800475D4 0780033C */  lui        $v1, %hi(D_80077F4E)
/* 37DD8 800475D8 21186400 */  addu       $v1, $v1, $a0
/* 37DDC 800475DC 4E7F6384 */  lh         $v1, %lo(D_80077F4E)($v1)
/* 37DE0 800475E0 03140200 */  sra        $v0, $v0, 16
/* 37DE4 800475E4 0B006214 */  bne        $v1, $v0, .L80047614
/* 37DE8 800475E8 FF000224 */   addiu     $v0, $zero, 0xFF
/* 37DEC 800475EC 0780033C */  lui        $v1, %hi(D_80077F40)
/* 37DF0 800475F0 21186400 */  addu       $v1, $v1, $a0
/* 37DF4 800475F4 407F6384 */  lh         $v1, %lo(D_80077F40)($v1)
/* 37DF8 800475F8 00000000 */  nop
/* 37DFC 800475FC 05006214 */  bne        $v1, $v0, .L80047614
/* 37E00 80047600 00000000 */   nop
/* 37E04 80047604 A820010C */  jal        func_800482A0
/* 37E08 80047608 FF000432 */   andi      $a0, $s0, 0xFF
/* 37E0C 8004760C 8A1D0108 */  j          .L80047628
/* 37E10 80047610 21100000 */   addu      $v0, $zero, $zero
.L80047614:
/* 37E14 80047614 0880013C */  lui        $at, %hi(D_80078788)
/* 37E18 80047618 888730A4 */  sh         $s0, %lo(D_80078788)($at)
/* 37E1C 8004761C A30D010C */  jal        func_8004368C
/* 37E20 80047620 21200000 */   addu      $a0, $zero, $zero
/* 37E24 80047624 21100000 */  addu       $v0, $zero, $zero
.L80047628:
/* 37E28 80047628 00241000 */  sll        $a0, $s0, 16
/* 37E2C 8004762C 03240400 */  sra        $a0, $a0, 16
/* 37E30 80047630 C0180400 */  sll        $v1, $a0, 3
/* 37E34 80047634 23186400 */  subu       $v1, $v1, $a0
/* 37E38 80047638 C0180300 */  sll        $v1, $v1, 3
/* 37E3C 8004763C 0780013C */  lui        $at, %hi(D_80077F6A)
/* 37E40 80047640 21082300 */  addu       $at, $at, $v1
/* 37E44 80047644 6A7F20A4 */  sh         $zero, %lo(D_80077F6A)($at)
/* 37E48 80047648 0780013C */  lui        $at, %hi(D_80077F5E)
/* 37E4C 8004764C 21082300 */  addu       $at, $at, $v1
/* 37E50 80047650 5E7F20A4 */  sh         $zero, %lo(D_80077F5E)($at)
/* 37E54 80047654 0780013C */  lui        $at, %hi(D_8007769C)
/* 37E58 80047658 9B1D0108 */  j          .L8004766C
/* 37E5C 8004765C 9C7620AC */   sw        $zero, %lo(D_8007769C)($at)
.L80047660:
/* 37E60 80047660 0780013C */  lui        $at, %hi(D_8007769C)
/* 37E64 80047664 9C7620AC */  sw         $zero, %lo(D_8007769C)($at)
.L80047668:
/* 37E68 80047668 FFFF0224 */  addiu      $v0, $zero, -0x1
.L8004766C:
/* 37E6C 8004766C 1400BF8F */  lw         $ra, 0x14($sp)
/* 37E70 80047670 1000B08F */  lw         $s0, 0x10($sp)
/* 37E74 80047674 0800E003 */  jr         $ra
/* 37E78 80047678 1800BD27 */   addiu     $sp, $sp, 0x18
/* 37E7C 8004767C 00000000 */  nop
.size func_8004753C, . - func_8004753C