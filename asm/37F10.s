.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

glabel func_80047710
/* 37F10 80047710 63000B24 */  addiu      $t3, $zero, 0x63
/* 37F14 80047714 FFFF0C34 */  ori        $t4, $zero, 0xFFFF
/* 37F18 80047718 21500000 */  addu       $t2, $zero, $zero
/* 37F1C 8004771C 21400000 */  addu       $t0, $zero, $zero
/* 37F20 80047720 63000924 */  addiu      $t1, $zero, 0x63
/* 37F24 80047724 21380000 */  addu       $a3, $zero, $zero
/* 37F28 80047728 0880023C */  lui        $v0, %hi(D_8007877F)
/* 37F2C 8004772C 7F874290 */  lbu        $v0, %lo(D_8007877F)($v0)
/* 37F30 80047730 0880033C */  lui        $v1, %hi(D_80078764)
/* 37F34 80047734 64876380 */  lb         $v1, %lo(D_80078764)($v1)
/* 37F38 80047738 00160200 */  sll        $v0, $v0, 24
/* 37F3C 8004773C 52006018 */  blez       $v1, .L80047888
/* 37F40 80047740 036E0200 */   sra       $t5, $v0, 24
/* 37F44 80047744 01001824 */  addiu      $t8, $zero, 0x1
/* 37F48 80047748 07800F3C */  lui        $t7, %hi(D_8006983C)
/* 37F4C 8004774C 3C98EF8D */  lw         $t7, %lo(D_8006983C)($t7)
/* 37F50 80047750 21706000 */  addu       $t6, $v1, $zero
/* 37F54 80047754 FF00E330 */  andi       $v1, $a3, 0xFF
.L80047758:
/* 37F58 80047758 04107800 */  sllv       $v0, $t8, $v1
/* 37F5C 8004775C 2410E201 */  and        $v0, $t7, $v0
/* 37F60 80047760 44004014 */  bnez       $v0, .L80047874
/* 37F64 80047764 C0100300 */   sll       $v0, $v1, 3
/* 37F68 80047768 23104300 */  subu       $v0, $v0, $v1
/* 37F6C 8004776C C0180200 */  sll        $v1, $v0, 3
/* 37F70 80047770 0780023C */  lui        $v0, %hi(D_80077F5D)
/* 37F74 80047774 21104300 */  addu       $v0, $v0, $v1
/* 37F78 80047778 5D7F4280 */  lb         $v0, %lo(D_80077F5D)($v0)
/* 37F7C 8004777C 00000000 */  nop
/* 37F80 80047780 09004014 */  bnez       $v0, .L800477A8
/* 37F84 80047784 FF00E230 */   andi      $v0, $a3, 0xFF
/* 37F88 80047788 0780023C */  lui        $v0, %hi(D_80077F46)
/* 37F8C 8004778C 21104300 */  addu       $v0, $v0, $v1
/* 37F90 80047790 467F4294 */  lhu        $v0, %lo(D_80077F46)($v0)
/* 37F94 80047794 00000000 */  nop
/* 37F98 80047798 03004014 */  bnez       $v0, .L800477A8
/* 37F9C 8004779C FF00E230 */   andi      $v0, $a3, 0xFF
/* 37FA0 800477A0 221E0108 */  j          .L80047888
/* 37FA4 800477A4 2158E000 */   addu      $t3, $a3, $zero
.L800477A8:
/* 37FA8 800477A8 C0180200 */  sll        $v1, $v0, 3
/* 37FAC 800477AC 23186200 */  subu       $v1, $v1, $v0
/* 37FB0 800477B0 C0180300 */  sll        $v1, $v1, 3
/* 37FB4 800477B4 FFFFA531 */  andi       $a1, $t5, 0xFFFF
/* 37FB8 800477B8 0780063C */  lui        $a2, %hi(D_80077F5A)
/* 37FBC 800477BC 2130C300 */  addu       $a2, $a2, $v1
/* 37FC0 800477C0 5A7FC684 */  lh         $a2, %lo(D_80077F5A)($a2)
/* 37FC4 800477C4 0780043C */  lui        $a0, %hi(D_80077F5A)
/* 37FC8 800477C8 21208300 */  addu       $a0, $a0, $v1
/* 37FCC 800477CC 5A7F8494 */  lhu        $a0, %lo(D_80077F5A)($a0)
/* 37FD0 800477D0 2A10C500 */  slt        $v0, $a2, $a1
/* 37FD4 800477D4 0B004010 */  beqz       $v0, .L80047804
/* 37FD8 800477D8 00000000 */   nop
/* 37FDC 800477DC 21688000 */  addu       $t5, $a0, $zero
/* 37FE0 800477E0 2148E000 */  addu       $t1, $a3, $zero
/* 37FE4 800477E4 07800C3C */  lui        $t4, %hi(D_80077F46)
/* 37FE8 800477E8 21608301 */  addu       $t4, $t4, $v1
/* 37FEC 800477EC 467F8C95 */  lhu        $t4, %lo(D_80077F46)($t4)
/* 37FF0 800477F0 0780083C */  lui        $t0, %hi(D_80077F42)
/* 37FF4 800477F4 21400301 */  addu       $t0, $t0, $v1
/* 37FF8 800477F8 427F0895 */  lhu        $t0, %lo(D_80077F42)($t0)
/* 37FFC 800477FC 1D1E0108 */  j          .L80047874
/* 38000 80047800 01000A24 */   addiu     $t2, $zero, 0x1
.L80047804:
/* 38004 80047804 1B00C514 */  bne        $a2, $a1, .L80047874
/* 38008 80047808 FFFF8431 */   andi      $a0, $t4, 0xFFFF
/* 3800C 8004780C 0780063C */  lui        $a2, %hi(D_80077F46)
/* 38010 80047810 2130C300 */  addu       $a2, $a2, $v1
/* 38014 80047814 467FC694 */  lhu        $a2, %lo(D_80077F46)($a2)
/* 38018 80047818 00000000 */  nop
/* 3801C 8004781C FFFFC530 */  andi       $a1, $a2, 0xFFFF
/* 38020 80047820 2B10A400 */  sltu       $v0, $a1, $a0
/* 38024 80047824 06004010 */  beqz       $v0, .L80047840
/* 38028 80047828 01004A25 */   addiu     $t2, $t2, 0x1
/* 3802C 8004782C 0780083C */  lui        $t0, %hi(D_80077F42)
/* 38030 80047830 21400301 */  addu       $t0, $t0, $v1
/* 38034 80047834 427F0895 */  lhu        $t0, %lo(D_80077F42)($t0)
/* 38038 80047838 1C1E0108 */  j          .L80047870
/* 3803C 8004783C 2160C000 */   addu      $t4, $a2, $zero
.L80047840:
/* 38040 80047840 0C00A414 */  bne        $a1, $a0, .L80047874
/* 38044 80047844 00000000 */   nop
/* 38048 80047848 0780023C */  lui        $v0, %hi(D_80077F42)
/* 3804C 8004784C 21104300 */  addu       $v0, $v0, $v1
/* 38050 80047850 427F4284 */  lh         $v0, %lo(D_80077F42)($v0)
/* 38054 80047854 0780013C */  lui        $at, %hi(D_80077F42)
/* 38058 80047858 21082300 */  addu       $at, $at, $v1
/* 3805C 8004785C 427F2394 */  lhu        $v1, %lo(D_80077F42)($at)
/* 38060 80047860 2A100201 */  slt        $v0, $t0, $v0
/* 38064 80047864 03004010 */  beqz       $v0, .L80047874
/* 38068 80047868 00000000 */   nop
/* 3806C 8004786C 21406000 */  addu       $t0, $v1, $zero
.L80047870:
/* 38070 80047870 2148E000 */  addu       $t1, $a3, $zero
.L80047874:
/* 38074 80047874 0100E724 */  addiu      $a3, $a3, 0x1
/* 38078 80047878 FF00E230 */  andi       $v0, $a3, 0xFF
/* 3807C 8004787C 2A104E00 */  slt        $v0, $v0, $t6
/* 38080 80047880 B5FF4014 */  bnez       $v0, .L80047758
/* 38084 80047884 FF00E330 */   andi      $v1, $a3, 0xFF
.L80047888:
/* 38088 80047888 FF006331 */  andi       $v1, $t3, 0xFF
/* 3808C 8004788C 63000224 */  addiu      $v0, $zero, 0x63
/* 38090 80047890 05006214 */  bne        $v1, $v0, .L800478A8
/* 38094 80047894 FF004231 */   andi      $v0, $t2, 0xFF
/* 38098 80047898 03004014 */  bnez       $v0, .L800478A8
/* 3809C 8004789C 21582001 */   addu      $t3, $t1, $zero
/* 380A0 800478A0 08800B3C */  lui        $t3, %hi(D_80078764)
/* 380A4 800478A4 64876B91 */  lbu        $t3, %lo(D_80078764)($t3)
.L800478A8:
/* 380A8 800478A8 0880033C */  lui        $v1, %hi(D_80078764)
/* 380AC 800478AC 64876380 */  lb         $v1, %lo(D_80078764)($v1)
/* 380B0 800478B0 FF006231 */  andi       $v0, $t3, 0xFF
/* 380B4 800478B4 2A104300 */  slt        $v0, $v0, $v1
/* 380B8 800478B8 2F004010 */  beqz       $v0, .L80047978
/* 380BC 800478BC 00000000 */   nop
/* 380C0 800478C0 19006018 */  blez       $v1, .L80047928
/* 380C4 800478C4 21380000 */   addu      $a3, $zero, $zero
/* 380C8 800478C8 01000824 */  addiu      $t0, $zero, 0x1
/* 380CC 800478CC 0780063C */  lui        $a2, %hi(D_8006983C)
/* 380D0 800478D0 3C98C68C */  lw         $a2, %lo(D_8006983C)($a2)
/* 380D4 800478D4 21286000 */  addu       $a1, $v1, $zero
/* 380D8 800478D8 FF00E430 */  andi       $a0, $a3, 0xFF
.L800478DC:
/* 380DC 800478DC 04108800 */  sllv       $v0, $t0, $a0
/* 380E0 800478E0 2410C200 */  and        $v0, $a2, $v0
/* 380E4 800478E4 0B004014 */  bnez       $v0, .L80047914
/* 380E8 800478E8 C0180400 */   sll       $v1, $a0, 3
/* 380EC 800478EC 23186400 */  subu       $v1, $v1, $a0
/* 380F0 800478F0 C0180300 */  sll        $v1, $v1, 3
/* 380F4 800478F4 0780023C */  lui        $v0, %hi(D_80077F42)
/* 380F8 800478F8 21104300 */  addu       $v0, $v0, $v1
/* 380FC 800478FC 427F4294 */  lhu        $v0, %lo(D_80077F42)($v0)
/* 38100 80047900 00000000 */  nop
/* 38104 80047904 01004224 */  addiu      $v0, $v0, 0x1
/* 38108 80047908 0780013C */  lui        $at, %hi(D_80077F42)
/* 3810C 8004790C 21082300 */  addu       $at, $at, $v1
/* 38110 80047910 427F22A4 */  sh         $v0, %lo(D_80077F42)($at)
.L80047914:
/* 38114 80047914 0100E724 */  addiu      $a3, $a3, 0x1
/* 38118 80047918 FF00E230 */  andi       $v0, $a3, 0xFF
/* 3811C 8004791C 2A104500 */  slt        $v0, $v0, $a1
/* 38120 80047920 EEFF4014 */  bnez       $v0, .L800478DC
/* 38124 80047924 FF00E430 */   andi      $a0, $a3, 0xFF
.L80047928:
/* 38128 80047928 FF006231 */  andi       $v0, $t3, 0xFF
/* 3812C 8004792C C0180200 */  sll        $v1, $v0, 3
/* 38130 80047930 23186200 */  subu       $v1, $v1, $v0
/* 38134 80047934 C0180300 */  sll        $v1, $v1, 3
/* 38138 80047938 0780013C */  lui        $at, %hi(D_80077F42)
/* 3813C 8004793C 21082300 */  addu       $at, $at, $v1
/* 38140 80047940 427F20A4 */  sh         $zero, %lo(D_80077F42)($at)
/* 38144 80047944 0880023C */  lui        $v0, %hi(D_8007877F)
/* 38148 80047948 7F874290 */  lbu        $v0, %lo(D_8007877F)($v0)
/* 3814C 8004794C 0780013C */  lui        $at, %hi(D_80077F6A)
/* 38150 80047950 21082300 */  addu       $at, $at, $v1
/* 38154 80047954 6A7F20A4 */  sh         $zero, %lo(D_80077F6A)($at)
/* 38158 80047958 0780013C */  lui        $at, %hi(D_80077F5E)
/* 3815C 8004795C 21082300 */  addu       $at, $at, $v1
/* 38160 80047960 5E7F20A4 */  sh         $zero, %lo(D_80077F5E)($at)
/* 38164 80047964 00160200 */  sll        $v0, $v0, 24
/* 38168 80047968 03160200 */  sra        $v0, $v0, 24
/* 3816C 8004796C 0780013C */  lui        $at, %hi(D_80077F5A)
/* 38170 80047970 21082300 */  addu       $at, $at, $v1
/* 38174 80047974 5A7F22A4 */  sh         $v0, %lo(D_80077F5A)($at)
.L80047978:
/* 38178 80047978 0800E003 */  jr         $ra
/* 3817C 8004797C FF006231 */   andi      $v0, $t3, 0xFF
.size func_80047710, . - func_80047710

glabel func_80047980
/* 38180 80047980 21280000 */  addu       $a1, $zero, $zero
/* 38184 80047984 0880023C */  lui        $v0, %hi(D_80078788)
/* 38188 80047988 88874224 */  addiu      $v0, $v0, %lo(D_80078788)
/* 3818C 8004798C 21304000 */  addu       $a2, $v0, $zero
/* 38190 80047990 01000724 */  addiu      $a3, $zero, 0x1
/* 38194 80047994 0000C294 */  lhu        $v0, 0x0($a2)
/* 38198 80047998 0880043C */  lui        $a0, %hi(D_80078628)
/* 3819C 8004799C 28868424 */  addiu      $a0, $a0, %lo(D_80078628)
/* 381A0 800479A0 C0400200 */  sll        $t0, $v0, 3
/* 381A4 800479A4 00140200 */  sll        $v0, $v0, 16
/* 381A8 800479A8 03140200 */  sra        $v0, $v0, 16
/* 381AC 800479AC C0180200 */  sll        $v1, $v0, 3
/* 381B0 800479B0 23186200 */  subu       $v1, $v1, $v0
/* 381B4 800479B4 C0180300 */  sll        $v1, $v1, 3
/* 381B8 800479B8 FF7F0224 */  addiu      $v0, $zero, 0x7FFF
/* 381BC 800479BC 0780013C */  lui        $at, %hi(D_80077F46)
/* 381C0 800479C0 21082300 */  addu       $at, $at, $v1
/* 381C4 800479C4 467F22A4 */  sh         $v0, %lo(D_80077F46)($at)
.L800479C8:
/* 381C8 800479C8 0100A524 */  addiu      $a1, $a1, 0x1
/* 381CC 800479CC 0000C284 */  lh         $v0, 0x0($a2)
/* 381D0 800479D0 0000838C */  lw         $v1, 0x0($a0)
/* 381D4 800479D4 04104700 */  sllv       $v0, $a3, $v0
/* 381D8 800479D8 27100200 */  nor        $v0, $zero, $v0
/* 381DC 800479DC 24186200 */  and        $v1, $v1, $v0
/* 381E0 800479E0 000083AC */  sw         $v1, 0x0($a0)
/* 381E4 800479E4 1000A228 */  slti       $v0, $a1, 0x10
/* 381E8 800479E8 F7FF4014 */  bnez       $v0, .L800479C8
/* 381EC 800479EC 04008424 */   addiu     $a0, $a0, 0x4
/* 381F0 800479F0 0880053C */  lui        $a1, %hi(D_80078786)
/* 381F4 800479F4 8687A524 */  addiu      $a1, $a1, %lo(D_80078786)
/* 381F8 800479F8 0000A394 */  lhu        $v1, 0x0($a1)
/* 381FC 800479FC 00000000 */  nop
/* 38200 80047A00 01006230 */  andi       $v0, $v1, 0x1
/* 38204 80047A04 0D004018 */  blez       $v0, .L80047A3C
/* 38208 80047A08 00140300 */   sll       $v0, $v1, 16
/* 3820C 80047A0C 03140200 */  sra        $v0, $v0, 16
/* 38210 80047A10 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 38214 80047A14 C21F0200 */  srl        $v1, $v0, 31
/* 38218 80047A18 21104300 */  addu       $v0, $v0, $v1
/* 3821C 80047A1C 43100200 */  sra        $v0, $v0, 1
/* 38220 80047A20 0880033C */  lui        $v1, %hi(D_80078754)
/* 38224 80047A24 5487638C */  lw         $v1, %lo(D_80078754)($v1)
/* 38228 80047A28 00110200 */  sll        $v0, $v0, 4
/* 3822C 80047A2C 21104300 */  addu       $v0, $v0, $v1
/* 38230 80047A30 0C004294 */  lhu        $v0, 0xC($v0)
/* 38234 80047A34 9A1E0108 */  j          .L80047A68
/* 38238 80047A38 00240800 */   sll       $a0, $t0, 16
.L80047A3C:
/* 3823C 80047A3C 00240800 */  sll        $a0, $t0, 16
/* 38240 80047A40 03140200 */  sra        $v0, $v0, 16
/* 38244 80047A44 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 38248 80047A48 C21F0200 */  srl        $v1, $v0, 31
/* 3824C 80047A4C 21104300 */  addu       $v0, $v0, $v1
/* 38250 80047A50 43100200 */  sra        $v0, $v0, 1
/* 38254 80047A54 0880033C */  lui        $v1, %hi(D_80078754)
/* 38258 80047A58 5487638C */  lw         $v1, %lo(D_80078754)($v1)
/* 3825C 80047A5C 00110200 */  sll        $v0, $v0, 4
/* 38260 80047A60 21104300 */  addu       $v0, $v0, $v1
/* 38264 80047A64 0E004294 */  lhu        $v0, 0xE($v0)
.L80047A68:
/* 38268 80047A68 C3230400 */  sra        $a0, $a0, 15
/* 3826C 80047A6C 0880013C */  lui        $at, %hi(D_800784A6)
/* 38270 80047A70 21082400 */  addu       $at, $at, $a0
/* 38274 80047A74 A68422A4 */  sh         $v0, %lo(D_800784A6)($at)
/* 38278 80047A78 0200A384 */  lh         $v1, 0x2($a1)
/* 3827C 80047A7C 0880023C */  lui        $v0, %hi(D_80078480)
/* 38280 80047A80 21104300 */  addu       $v0, $v0, $v1
/* 38284 80047A84 80844290 */  lbu        $v0, %lo(D_80078480)($v0)
/* 38288 80047A88 00000000 */  nop
/* 3828C 80047A8C 08004234 */  ori        $v0, $v0, 0x8
/* 38290 80047A90 0880013C */  lui        $at, %hi(D_80078480)
/* 38294 80047A94 21082300 */  addu       $at, $at, $v1
/* 38298 80047A98 808422A0 */  sb         $v0, %lo(D_80078480)($at)
/* 3829C 80047A9C 0880073C */  lui        $a3, %hi(D_80078777)
/* 382A0 80047AA0 7787E724 */  addiu      $a3, $a3, %lo(D_80078777)
/* 382A4 80047AA4 00240800 */  sll        $a0, $t0, 16
/* 382A8 80047AA8 C3330400 */  sra        $a2, $a0, 15
/* 382AC 80047AAC 0000E280 */  lb         $v0, 0x0($a3)
/* 382B0 80047AB0 0500E380 */  lb         $v1, 0x5($a3)
/* 382B4 80047AB4 00110200 */  sll        $v0, $v0, 4
/* 382B8 80047AB8 21104300 */  addu       $v0, $v0, $v1
/* 382BC 80047ABC 0880033C */  lui        $v1, %hi(D_80078760)
/* 382C0 80047AC0 6087638C */  lw         $v1, %lo(D_80078760)($v1)
/* 382C4 80047AC4 40110200 */  sll        $v0, $v0, 5
/* 382C8 80047AC8 21104300 */  addu       $v0, $v0, $v1
/* 382CC 80047ACC 10004394 */  lhu        $v1, 0x10($v0)
/* 382D0 80047AD0 0880053C */  lui        $a1, %hi(D_800784A8)
/* 382D4 80047AD4 A884A524 */  addiu      $a1, $a1, %lo(D_800784A8)
/* 382D8 80047AD8 0880013C */  lui        $at, %hi(D_800784A8)
/* 382DC 80047ADC 21082600 */  addu       $at, $at, $a2
/* 382E0 80047AE0 A88423A4 */  sh         $v1, %lo(D_800784A8)($at)
/* 382E4 80047AE4 12004494 */  lhu        $a0, 0x12($v0)
/* 382E8 80047AE8 0880023C */  lui        $v0, %hi(D_80078708)
/* 382EC 80047AEC 08874294 */  lhu        $v0, %lo(D_80078708)($v0)
/* 382F0 80047AF0 1F008330 */  andi       $v1, $a0, 0x1F
/* 382F4 80047AF4 21104300 */  addu       $v0, $v0, $v1
/* 382F8 80047AF8 21184000 */  addu       $v1, $v0, $zero
/* 382FC 80047AFC 00140200 */  sll        $v0, $v0, 16
/* 38300 80047B00 03140200 */  sra        $v0, $v0, 16
/* 38304 80047B04 20004228 */  slti       $v0, $v0, 0x20
/* 38308 80047B08 02004014 */  bnez       $v0, .L80047B14
/* 3830C 80047B0C E0FF8430 */   andi      $a0, $a0, 0xFFE0
/* 38310 80047B10 1F000324 */  addiu      $v1, $zero, 0x1F
.L80047B14:
/* 38314 80047B14 25186400 */  or         $v1, $v1, $a0
/* 38318 80047B18 2110A600 */  addu       $v0, $a1, $a2
/* 3831C 80047B1C 020043A4 */  sh         $v1, 0x2($v0)
/* 38320 80047B20 1100E384 */  lh         $v1, 0x11($a3)
/* 38324 80047B24 0880023C */  lui        $v0, %hi(D_80078480)
/* 38328 80047B28 21104300 */  addu       $v0, $v0, $v1
/* 3832C 80047B2C 80844290 */  lbu        $v0, %lo(D_80078480)($v0)
/* 38330 80047B30 00000000 */  nop
/* 38334 80047B34 30004234 */  ori        $v0, $v0, 0x30
/* 38338 80047B38 0880013C */  lui        $at, %hi(D_80078480)
/* 3833C 80047B3C 21082300 */  addu       $at, $at, $v1
/* 38340 80047B40 0800E003 */  jr         $ra
/* 38344 80047B44 808422A0 */   sb        $v0, %lo(D_80078480)($at)
/* 38348 80047B48 00000000 */  nop
/* 3834C 80047B4C 00000000 */  nop
.size func_80047980, . - func_80047980
