.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

# Handwritten function
glabel func_800244CC
/* 14CCC 800244CC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 14CD0 800244D0 1800B2AF */  sw         $s2, 0x18($sp)
/* 14CD4 800244D4 21908000 */  addu       $s2, $a0, $zero
/* 14CD8 800244D8 1400B1AF */  sw         $s1, 0x14($sp)
/* 14CDC 800244DC 2188A000 */  addu       $s1, $a1, $zero
/* 14CE0 800244E0 00340600 */  sll        $a2, $a2, 16
/* 14CE4 800244E4 1000B0AF */  sw         $s0, 0x10($sp)
/* 14CE8 800244E8 03840600 */  sra        $s0, $a2, 16
/* 14CEC 800244EC FFFF0232 */  andi       $v0, $s0, 0xFFFF
/* 14CF0 800244F0 0600422C */  sltiu      $v0, $v0, 0x6
/* 14CF4 800244F4 09004014 */  bnez       $v0, .L8002451C
/* 14CF8 800244F8 1C00BFAF */   sw        $ra, 0x1C($sp)
/* 14CFC 800244FC 0180043C */  lui        $a0, %hi(D_80011474)
/* 14D00 80024500 74148424 */  addiu      $a0, $a0, %lo(D_80011474)
/* 14D04 80024504 0180053C */  lui        $a1, %hi(D_800114B8)
/* 14D08 80024508 B814A524 */  addiu      $a1, $a1, %lo(D_800114B8)
/* 14D0C 8002450C 9361000C */  jal        printf
/* 14D10 80024510 A8000624 */   addiu     $a2, $zero, 0xA8
/* 14D14 80024514 FFFF0324 */  addiu      $v1, $zero, -0x1
/* 14D18 80024518 010003AC */  sw         $v1, 0x1($zero)
.L8002451C:
/* 14D1C 8002451C 0680023C */  lui        $v0, %hi(D_80065014)
/* 14D20 80024520 14504224 */  addiu      $v0, $v0, %lo(D_80065014)
/* 14D24 80024524 80181000 */  sll        $v1, $s0, 2
/* 14D28 80024528 21186200 */  addu       $v1, $v1, $v0
/* 14D2C 8002452C 0000658C */  lw         $a1, 0x0($v1)
/* 14D30 80024530 00000000 */  nop
/* 14D34 80024534 09F8A000 */  jalr       $a1
/* 14D38 80024538 21202002 */   addu      $a0, $s1, $zero
/* 14D3C 8002453C 00004C48 */  cfc2       $t4, $0 # handwritten instruction
/* 14D40 80024540 00084D48 */  cfc2       $t5, $1 # handwritten instruction
/* 14D44 80024544 00004CAE */  sw         $t4, 0x0($s2)
/* 14D48 80024548 04004DAE */  sw         $t5, 0x4($s2)
/* 14D4C 8002454C 00104C48 */  cfc2       $t4, $2 # handwritten instruction
/* 14D50 80024550 00184D48 */  cfc2       $t5, $3 # handwritten instruction
/* 14D54 80024554 00204E48 */  cfc2       $t6, $4 # handwritten instruction
/* 14D58 80024558 08004CAE */  sw         $t4, 0x8($s2)
/* 14D5C 8002455C 0C004DAE */  sw         $t5, 0xC($s2)
/* 14D60 80024560 10004EAE */  sw         $t6, 0x10($s2)
/* 14D64 80024564 00284C48 */  cfc2       $t4, $5 # handwritten instruction
/* 14D68 80024568 00304D48 */  cfc2       $t5, $6 # handwritten instruction
/* 14D6C 8002456C 00384E48 */  cfc2       $t6, $7 # handwritten instruction
/* 14D70 80024570 14004CAE */  sw         $t4, 0x14($s2)
/* 14D74 80024574 18004DAE */  sw         $t5, 0x18($s2)
/* 14D78 80024578 1C004EAE */  sw         $t6, 0x1C($s2)
/* 14D7C 8002457C 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 14D80 80024580 1800B28F */  lw         $s2, 0x18($sp)
/* 14D84 80024584 1400B18F */  lw         $s1, 0x14($sp)
/* 14D88 80024588 1000B08F */  lw         $s0, 0x10($sp)
/* 14D8C 8002458C 0800E003 */  jr         $ra
/* 14D90 80024590 2000BD27 */   addiu     $sp, $sp, 0x20
.size func_800244CC, . - func_800244CC

# Handwritten function
glabel func_80024594
/* 14D94 80024594 FF0F8430 */  andi       $a0, $a0, 0xFFF
/* 14D98 80024598 80200400 */  sll        $a0, $a0, 2
/* 14D9C 8002459C 0680013C */  lui        $at, %hi(D_8006502C)
/* 14DA0 800245A0 21082400 */  addu       $at, $at, $a0
/* 14DA4 800245A4 2C50268C */  lw         $a2, %lo(D_8006502C)($at)
/* 14DA8 800245A8 00004F48 */  cfc2       $t7, $0 # handwritten instruction
/* 14DAC 800245AC 033C0600 */  sra        $a3, $a2, 16
/* 14DB0 800245B0 00340600 */  sll        $a2, $a2, 16
/* 14DB4 800245B4 03340600 */  sra        $a2, $a2, 16
/* 14DB8 800245B8 00488048 */  mtc2       $zero, $9 # handwritten instruction
/* 14DBC 800245BC 00508748 */  mtc2       $a3, $10 # handwritten instruction
/* 14DC0 800245C0 00588648 */  mtc2       $a2, $11 # handwritten instruction
/* 14DC4 800245C4 00084E48 */  cfc2       $t6, $1 # handwritten instruction
/* 14DC8 800245C8 FFFFEF31 */  andi       $t7, $t7, 0xFFFF
/* 14DCC 800245CC 12E0494A */  MVMVA      1, 0, 3, 3, 0
/* 14DD0 800245D0 00184D48 */  cfc2       $t5, $3 # handwritten instruction
/* 14DD4 800245D4 02740E00 */  srl        $t6, $t6, 16
/* 14DD8 800245D8 00740E00 */  sll        $t6, $t6, 16
/* 14DDC 800245DC FFFFAD31 */  andi       $t5, $t5, 0xFFFF
/* 14DE0 800245E0 23300600 */  negu       $a2, $a2
/* 14DE4 800245E4 00480848 */  mfc2       $t0, $9 # handwritten instruction
/* 14DE8 800245E8 00500948 */  mfc2       $t1, $10 # handwritten instruction
/* 14DEC 800245EC 00580A48 */  mfc2       $t2, $11 # handwritten instruction
/* 14DF0 800245F0 00488048 */  mtc2       $zero, $9 # handwritten instruction
/* 14DF4 800245F4 00508648 */  mtc2       $a2, $10 # handwritten instruction
/* 14DF8 800245F8 00588748 */  mtc2       $a3, $11 # handwritten instruction
/* 14DFC 800245FC 00440800 */  sll        $t0, $t0, 16
/* 14E00 80024600 2578E801 */  or         $t7, $t7, $t0
/* 14E04 80024604 12E0494A */  MVMVA      1, 0, 3, 3, 0
/* 14E08 80024608 FFFF2C31 */  andi       $t4, $t1, 0xFFFF
/* 14E0C 8002460C 00540A00 */  sll        $t2, $t2, 16
/* 14E10 80024610 2568AA01 */  or         $t5, $t5, $t2
/* 14E14 80024614 00480848 */  mfc2       $t0, $9 # handwritten instruction
/* 14E18 80024618 00500948 */  mfc2       $t1, $10 # handwritten instruction
/* 14E1C 8002461C 00580A48 */  mfc2       $t2, $11 # handwritten instruction
/* 14E20 80024620 FFFF0831 */  andi       $t0, $t0, 0xFFFF
/* 14E24 80024624 2570C801 */  or         $t6, $t6, $t0
/* 14E28 80024628 004C0900 */  sll        $t1, $t1, 16
/* 14E2C 8002462C 25608901 */  or         $t4, $t4, $t1
/* 14E30 80024630 0000CF48 */  ctc2       $t7, $0 # handwritten instruction
/* 14E34 80024634 0008CE48 */  ctc2       $t6, $1 # handwritten instruction
/* 14E38 80024638 0010CC48 */  ctc2       $t4, $2 # handwritten instruction
/* 14E3C 8002463C 0018CD48 */  ctc2       $t5, $3 # handwritten instruction
/* 14E40 80024640 0020CA48 */  ctc2       $t2, $4 # handwritten instruction
/* 14E44 80024644 0800E003 */  jr         $ra
/* 14E48 80024648 00000000 */   nop
.size func_80024594, . - func_80024594

# Handwritten function
glabel func_8002464C
/* 14E4C 8002464C FF0F8430 */  andi       $a0, $a0, 0xFFF
/* 14E50 80024650 80200400 */  sll        $a0, $a0, 2
/* 14E54 80024654 0680013C */  lui        $at, %hi(D_8006502C)
/* 14E58 80024658 21082400 */  addu       $at, $at, $a0
/* 14E5C 8002465C 2C50268C */  lw         $a2, %lo(D_8006502C)($at)
/* 14E60 80024660 00004B48 */  cfc2       $t3, $0 # handwritten instruction
/* 14E64 80024664 033C0600 */  sra        $a3, $a2, 16
/* 14E68 80024668 00340600 */  sll        $a2, $a2, 16
/* 14E6C 8002466C 03340600 */  sra        $a2, $a2, 16
/* 14E70 80024670 23100600 */  negu       $v0, $a2
/* 14E74 80024674 00488748 */  mtc2       $a3, $9 # handwritten instruction
/* 14E78 80024678 00508048 */  mtc2       $zero, $10 # handwritten instruction
/* 14E7C 8002467C 00588248 */  mtc2       $v0, $11 # handwritten instruction
/* 14E80 80024680 025C0B00 */  srl        $t3, $t3, 16
/* 14E84 80024684 005C0B00 */  sll        $t3, $t3, 16
/* 14E88 80024688 12E0494A */  MVMVA      1, 0, 3, 3, 0
/* 14E8C 8002468C 00104C48 */  cfc2       $t4, $2 # handwritten instruction
/* 14E90 80024690 00184D48 */  cfc2       $t5, $3 # handwritten instruction
/* 14E94 80024694 FFFF8C31 */  andi       $t4, $t4, 0xFFFF
/* 14E98 80024698 026C0D00 */  srl        $t5, $t5, 16
/* 14E9C 8002469C 006C0D00 */  sll        $t5, $t5, 16
/* 14EA0 800246A0 00480848 */  mfc2       $t0, $9 # handwritten instruction
/* 14EA4 800246A4 00500948 */  mfc2       $t1, $10 # handwritten instruction
/* 14EA8 800246A8 00580A48 */  mfc2       $t2, $11 # handwritten instruction
/* 14EAC 800246AC 00488648 */  mtc2       $a2, $9 # handwritten instruction
/* 14EB0 800246B0 00508048 */  mtc2       $zero, $10 # handwritten instruction
/* 14EB4 800246B4 00588748 */  mtc2       $a3, $11 # handwritten instruction
/* 14EB8 800246B8 FFFF0831 */  andi       $t0, $t0, 0xFFFF
/* 14EBC 800246BC 25786801 */  or         $t7, $t3, $t0
/* 14EC0 800246C0 12E0494A */  MVMVA      1, 0, 3, 3, 0
/* 14EC4 800246C4 00740900 */  sll        $t6, $t1, 16
/* 14EC8 800246C8 FFFF4A31 */  andi       $t2, $t2, 0xFFFF
/* 14ECC 800246CC 2568AA01 */  or         $t5, $t5, $t2
/* 14ED0 800246D0 00480848 */  mfc2       $t0, $9 # handwritten instruction
/* 14ED4 800246D4 00500948 */  mfc2       $t1, $10 # handwritten instruction
/* 14ED8 800246D8 00580A48 */  mfc2       $t2, $11 # handwritten instruction
/* 14EDC 800246DC FFFF0831 */  andi       $t0, $t0, 0xFFFF
/* 14EE0 800246E0 2570C801 */  or         $t6, $t6, $t0
/* 14EE4 800246E4 004C0900 */  sll        $t1, $t1, 16
/* 14EE8 800246E8 25608901 */  or         $t4, $t4, $t1
/* 14EEC 800246EC 0000CF48 */  ctc2       $t7, $0 # handwritten instruction
/* 14EF0 800246F0 0008CE48 */  ctc2       $t6, $1 # handwritten instruction
/* 14EF4 800246F4 0010CC48 */  ctc2       $t4, $2 # handwritten instruction
/* 14EF8 800246F8 0018CD48 */  ctc2       $t5, $3 # handwritten instruction
/* 14EFC 800246FC 0020CA48 */  ctc2       $t2, $4 # handwritten instruction
/* 14F00 80024700 0800E003 */  jr         $ra
/* 14F04 80024704 00000000 */   nop
.size func_8002464C, . - func_8002464C

# Handwritten function
glabel func_80024708
/* 14F08 80024708 FF0F8430 */  andi       $a0, $a0, 0xFFF
/* 14F0C 8002470C 80200400 */  sll        $a0, $a0, 2
/* 14F10 80024710 0680013C */  lui        $at, %hi(D_8006502C)
/* 14F14 80024714 21082400 */  addu       $at, $at, $a0
/* 14F18 80024718 2C50268C */  lw         $a2, %lo(D_8006502C)($at)
/* 14F1C 8002471C 00084B48 */  cfc2       $t3, $1 # handwritten instruction
/* 14F20 80024720 033C0600 */  sra        $a3, $a2, 16
/* 14F24 80024724 00340600 */  sll        $a2, $a2, 16
/* 14F28 80024728 03340600 */  sra        $a2, $a2, 16
/* 14F2C 8002472C 23100600 */  negu       $v0, $a2
/* 14F30 80024730 00488248 */  mtc2       $v0, $9 # handwritten instruction
/* 14F34 80024734 00508748 */  mtc2       $a3, $10 # handwritten instruction
/* 14F38 80024738 00588048 */  mtc2       $zero, $11 # handwritten instruction
/* 14F3C 8002473C 00104F48 */  cfc2       $t7, $2 # handwritten instruction
/* 14F40 80024740 FFFF6B31 */  andi       $t3, $t3, 0xFFFF
/* 14F44 80024744 12E0494A */  MVMVA      1, 0, 3, 3, 0
/* 14F48 80024748 027C0F00 */  srl        $t7, $t7, 16
/* 14F4C 8002474C 007C0F00 */  sll        $t7, $t7, 16
/* 14F50 80024750 00480848 */  mfc2       $t0, $9 # handwritten instruction
/* 14F54 80024754 00500948 */  mfc2       $t1, $10 # handwritten instruction
/* 14F58 80024758 00580A48 */  mfc2       $t2, $11 # handwritten instruction
/* 14F5C 8002475C 00488748 */  mtc2       $a3, $9 # handwritten instruction
/* 14F60 80024760 00508648 */  mtc2       $a2, $10 # handwritten instruction
/* 14F64 80024764 00588048 */  mtc2       $zero, $11 # handwritten instruction
/* 14F68 80024768 FFFF2931 */  andi       $t1, $t1, 0xFFFF
/* 14F6C 8002476C 2578E901 */  or         $t7, $t7, $t1
/* 14F70 80024770 12E0494A */  MVMVA      1, 0, 3, 3, 0
/* 14F74 80024774 00740800 */  sll        $t6, $t0, 16
/* 14F78 80024778 006C0A00 */  sll        $t5, $t2, 16
/* 14F7C 8002477C 00480848 */  mfc2       $t0, $9 # handwritten instruction
/* 14F80 80024780 00500948 */  mfc2       $t1, $10 # handwritten instruction
/* 14F84 80024784 00580A48 */  mfc2       $t2, $11 # handwritten instruction
/* 14F88 80024788 FFFF0831 */  andi       $t0, $t0, 0xFFFF
/* 14F8C 8002478C 2570C801 */  or         $t6, $t6, $t0
/* 14F90 80024790 004C0900 */  sll        $t1, $t1, 16
/* 14F94 80024794 25606901 */  or         $t4, $t3, $t1
/* 14F98 80024798 FFFF4A31 */  andi       $t2, $t2, 0xFFFF
/* 14F9C 8002479C 25684D01 */  or         $t5, $t2, $t5
/* 14FA0 800247A0 0000CE48 */  ctc2       $t6, $0 # handwritten instruction
/* 14FA4 800247A4 0008CC48 */  ctc2       $t4, $1 # handwritten instruction
/* 14FA8 800247A8 0010CF48 */  ctc2       $t7, $2 # handwritten instruction
/* 14FAC 800247AC 0018CD48 */  ctc2       $t5, $3 # handwritten instruction
/* 14FB0 800247B0 0800E003 */  jr         $ra
/* 14FB4 800247B4 00000000 */   nop
.size func_80024708, . - func_80024708

glabel func_800247B8
/* 14FB8 800247B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 14FBC 800247BC 1000B0AF */  sw         $s0, 0x10($sp)
/* 14FC0 800247C0 21808000 */  addu       $s0, $a0, $zero
/* 14FC4 800247C4 2C000426 */  addiu      $a0, $s0, 0x2C
/* 14FC8 800247C8 1400BFAF */  sw         $ra, 0x14($sp)
/* 14FCC 800247CC 00000696 */  lhu        $a2, 0x0($s0)
/* 14FD0 800247D0 18000526 */  addiu      $a1, $s0, 0x18
/* 14FD4 800247D4 3391000C */  jal        func_800244CC
/* 14FD8 800247D8 0700C630 */   andi      $a2, $a2, 0x7
/* 14FDC 800247DC 10000286 */  lh         $v0, 0x10($s0)
/* 14FE0 800247E0 12000386 */  lh         $v1, 0x12($s0)
/* 14FE4 800247E4 14000486 */  lh         $a0, 0x14($s0)
/* 14FE8 800247E8 1400BF8F */  lw         $ra, 0x14($sp)
/* 14FEC 800247EC 400002AE */  sw         $v0, 0x40($s0)
/* 14FF0 800247F0 440003AE */  sw         $v1, 0x44($s0)
/* 14FF4 800247F4 480004AE */  sw         $a0, 0x48($s0)
/* 14FF8 800247F8 1000B08F */  lw         $s0, 0x10($sp)
/* 14FFC 800247FC 0800E003 */  jr         $ra
/* 15000 80024800 1800BD27 */   addiu     $sp, $sp, 0x18
.size func_800247B8, . - func_800247B8

glabel func_80024804
/* 15004 80024804 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 15008 80024808 1000B0AF */  sw         $s0, 0x10($sp)
/* 1500C 8002480C 21808000 */  addu       $s0, $a0, $zero
/* 15010 80024810 1400B1AF */  sw         $s1, 0x14($sp)
/* 15014 80024814 2188A000 */  addu       $s1, $a1, $zero
/* 15018 80024818 0C000012 */  beqz       $s0, .L8002484C
/* 1501C 8002481C 1800BFAF */   sw        $ra, 0x18($sp)
.L80024820:
/* 15020 80024820 00000296 */  lhu        $v0, 0x0($s0)
/* 15024 80024824 00000000 */  nop
/* 15028 80024828 00204230 */  andi       $v0, $v0, 0x2000
/* 1502C 8002482C 03004014 */  bnez       $v0, .L8002483C
/* 15030 80024830 21200002 */   addu      $a0, $s0, $zero
/* 15034 80024834 1892000C */  jal        func_80024860
/* 15038 80024838 21282002 */   addu      $a1, $s1, $zero
.L8002483C:
/* 1503C 8002483C A000108E */  lw         $s0, 0xA0($s0)
/* 15040 80024840 00000000 */  nop
/* 15044 80024844 F6FF0016 */  bnez       $s0, .L80024820
/* 15048 80024848 00000000 */   nop
.L8002484C:
/* 1504C 8002484C 1800BF8F */  lw         $ra, 0x18($sp)
/* 15050 80024850 1400B18F */  lw         $s1, 0x14($sp)
/* 15054 80024854 1000B08F */  lw         $s0, 0x10($sp)
/* 15058 80024858 0800E003 */  jr         $ra
/* 1505C 8002485C 2000BD27 */   addiu     $sp, $sp, 0x20
.size func_80024804, . - func_80024804

glabel func_80024860
/* 15060 80024860 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 15064 80024864 1000B0AF */  sw         $s0, 0x10($sp)
/* 15068 80024868 21808000 */  addu       $s0, $a0, $zero
/* 1506C 8002486C 1800B2AF */  sw         $s2, 0x18($sp)
/* 15070 80024870 2190A000 */  addu       $s2, $a1, $zero
/* 15074 80024874 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 15078 80024878 34000012 */  beqz       $s0, .L8002494C
/* 1507C 8002487C 1400B1AF */   sw        $s1, 0x14($sp)
.L80024880:
/* 15080 80024880 00000396 */  lhu        $v1, 0x0($s0)
/* 15084 80024884 00000000 */  nop
/* 15088 80024888 00026230 */  andi       $v0, $v1, 0x200
/* 1508C 8002488C 2B004014 */  bnez       $v0, .L8002493C
/* 15090 80024890 10006230 */   andi      $v0, $v1, 0x10
/* 15094 80024894 03004010 */  beqz       $v0, .L800248A4
/* 15098 80024898 21884000 */   addu      $s1, $v0, $zero
/* 1509C 8002489C EE91000C */  jal        func_800247B8
/* 150A0 800248A0 21200002 */   addu      $a0, $s0, $zero
.L800248A4:
/* 150A4 800248A4 2800048E */  lw         $a0, 0x28($s0)
/* 150A8 800248A8 00000000 */  nop
/* 150AC 800248AC 0A008010 */  beqz       $a0, .L800248D8
/* 150B0 800248B0 00000000 */   nop
/* 150B4 800248B4 00000296 */  lhu        $v0, 0x0($s0)
/* 150B8 800248B8 00000000 */  nop
/* 150BC 800248BC 20004230 */  andi       $v0, $v0, 0x20
/* 150C0 800248C0 05004010 */  beqz       $v0, .L800248D8
/* 150C4 800248C4 2C000526 */   addiu     $a1, $s0, 0x2C
/* 150C8 800248C8 9692000C */  jal        func_80024A58
/* 150CC 800248CC 4C000626 */   addiu     $a2, $s0, 0x4C
/* 150D0 800248D0 48920008 */  j          .L80024920
/* 150D4 800248D4 00000000 */   nop
.L800248D8:
/* 150D8 800248D8 11002012 */  beqz       $s1, .L80024920
/* 150DC 800248DC 00000000 */   nop
/* 150E0 800248E0 2C00028E */  lw         $v0, 0x2C($s0)
/* 150E4 800248E4 3000038E */  lw         $v1, 0x30($s0)
/* 150E8 800248E8 3400048E */  lw         $a0, 0x34($s0)
/* 150EC 800248EC 3800058E */  lw         $a1, 0x38($s0)
/* 150F0 800248F0 3C00068E */  lw         $a2, 0x3C($s0)
/* 150F4 800248F4 4000078E */  lw         $a3, 0x40($s0)
/* 150F8 800248F8 4400088E */  lw         $t0, 0x44($s0)
/* 150FC 800248FC 4800098E */  lw         $t1, 0x48($s0)
/* 15100 80024900 4C0002AE */  sw         $v0, 0x4C($s0)
/* 15104 80024904 500003AE */  sw         $v1, 0x50($s0)
/* 15108 80024908 540004AE */  sw         $a0, 0x54($s0)
/* 1510C 8002490C 580005AE */  sw         $a1, 0x58($s0)
/* 15110 80024910 5C0006AE */  sw         $a2, 0x5C($s0)
/* 15114 80024914 600007AE */  sw         $a3, 0x60($s0)
/* 15118 80024918 640008AE */  sw         $t0, 0x64($s0)
/* 1511C 8002491C 680009AE */  sw         $t1, 0x68($s0)
.L80024920:
/* 15120 80024920 00000296 */  lhu        $v0, 0x0($s0)
/* 15124 80024924 00000000 */  nop
/* 15128 80024928 40004230 */  andi       $v0, $v0, 0x40
/* 1512C 8002492C 03004010 */  beqz       $v0, .L8002493C
/* 15130 80024930 21200002 */   addu      $a0, $s0, $zero
/* 15134 80024934 B992000C */  jal        func_80024AE4
/* 15138 80024938 21284002 */   addu      $a1, $s2, $zero
.L8002493C:
/* 1513C 8002493C 9C00108E */  lw         $s0, 0x9C($s0)
/* 15140 80024940 00000000 */  nop
/* 15144 80024944 CEFF0016 */  bnez       $s0, .L80024880
/* 15148 80024948 00000000 */   nop
.L8002494C:
/* 1514C 8002494C 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 15150 80024950 1800B28F */  lw         $s2, 0x18($sp)
/* 15154 80024954 1400B18F */  lw         $s1, 0x14($sp)
/* 15158 80024958 1000B08F */  lw         $s0, 0x10($sp)
/* 1515C 8002495C 0800E003 */  jr         $ra
/* 15160 80024960 2000BD27 */   addiu     $sp, $sp, 0x20
.size func_80024860, . - func_80024860

# Handwritten function
glabel func_80024964
/* 15164 80024964 00008C8C */  lw         $t4, 0x0($a0)
/* 15168 80024968 04008D8C */  lw         $t5, 0x4($a0)
/* 1516C 8002496C 0000CC48 */  ctc2       $t4, $0 # handwritten instruction
/* 15170 80024970 0008CD48 */  ctc2       $t5, $1 # handwritten instruction
/* 15174 80024974 08008C8C */  lw         $t4, 0x8($a0)
/* 15178 80024978 0C008D8C */  lw         $t5, 0xC($a0)
/* 1517C 8002497C 10008E8C */  lw         $t6, 0x10($a0)
/* 15180 80024980 0010CC48 */  ctc2       $t4, $2 # handwritten instruction
/* 15184 80024984 0018CD48 */  ctc2       $t5, $3 # handwritten instruction
/* 15188 80024988 0020CE48 */  ctc2       $t6, $4 # handwritten instruction
/* 1518C 8002498C 0000AC94 */  lhu        $t4, 0x0($a1)
/* 15190 80024990 0600AD94 */  lhu        $t5, 0x6($a1)
/* 15194 80024994 0C00AE94 */  lhu        $t6, 0xC($a1)
/* 15198 80024998 00488C48 */  mtc2       $t4, $9 # handwritten instruction
/* 1519C 8002499C 00508D48 */  mtc2       $t5, $10 # handwritten instruction
/* 151A0 800249A0 00588E48 */  mtc2       $t6, $11 # handwritten instruction
/* 151A4 800249A4 00000000 */  nop
/* 151A8 800249A8 00000000 */  nop
/* 151AC 800249AC 12E0494A */  MVMVA      1, 0, 3, 3, 0
/* 151B0 800249B0 00480C48 */  mfc2       $t4, $9 # handwritten instruction
/* 151B4 800249B4 00500D48 */  mfc2       $t5, $10 # handwritten instruction
/* 151B8 800249B8 00580E48 */  mfc2       $t6, $11 # handwritten instruction
/* 151BC 800249BC 0000CCA4 */  sh         $t4, 0x0($a2)
/* 151C0 800249C0 0600CDA4 */  sh         $t5, 0x6($a2)
/* 151C4 800249C4 0C00CEA4 */  sh         $t6, 0xC($a2)
/* 151C8 800249C8 0200A224 */  addiu      $v0, $a1, 0x2
/* 151CC 800249CC 00004C94 */  lhu        $t4, 0x0($v0)
/* 151D0 800249D0 06004D94 */  lhu        $t5, 0x6($v0)
/* 151D4 800249D4 0C004E94 */  lhu        $t6, 0xC($v0)
/* 151D8 800249D8 00488C48 */  mtc2       $t4, $9 # handwritten instruction
/* 151DC 800249DC 00508D48 */  mtc2       $t5, $10 # handwritten instruction
/* 151E0 800249E0 00588E48 */  mtc2       $t6, $11 # handwritten instruction
/* 151E4 800249E4 00000000 */  nop
/* 151E8 800249E8 00000000 */  nop
/* 151EC 800249EC 12E0494A */  MVMVA      1, 0, 3, 3, 0
/* 151F0 800249F0 0200C224 */  addiu      $v0, $a2, 0x2
/* 151F4 800249F4 00480C48 */  mfc2       $t4, $9 # handwritten instruction
/* 151F8 800249F8 00500D48 */  mfc2       $t5, $10 # handwritten instruction
/* 151FC 800249FC 00580E48 */  mfc2       $t6, $11 # handwritten instruction
/* 15200 80024A00 00004CA4 */  sh         $t4, 0x0($v0)
/* 15204 80024A04 06004DA4 */  sh         $t5, 0x6($v0)
/* 15208 80024A08 0C004EA4 */  sh         $t6, 0xC($v0)
/* 1520C 80024A0C 0400A524 */  addiu      $a1, $a1, 0x4
/* 15210 80024A10 0000AC94 */  lhu        $t4, 0x0($a1)
/* 15214 80024A14 0600AD94 */  lhu        $t5, 0x6($a1)
/* 15218 80024A18 0C00AE94 */  lhu        $t6, 0xC($a1)
/* 1521C 80024A1C 00488C48 */  mtc2       $t4, $9 # handwritten instruction
/* 15220 80024A20 00508D48 */  mtc2       $t5, $10 # handwritten instruction
/* 15224 80024A24 00588E48 */  mtc2       $t6, $11 # handwritten instruction
/* 15228 80024A28 00000000 */  nop
/* 1522C 80024A2C 00000000 */  nop
/* 15230 80024A30 12E0494A */  MVMVA      1, 0, 3, 3, 0
/* 15234 80024A34 0400C624 */  addiu      $a2, $a2, 0x4
/* 15238 80024A38 00480C48 */  mfc2       $t4, $9 # handwritten instruction
/* 1523C 80024A3C 00500D48 */  mfc2       $t5, $10 # handwritten instruction
/* 15240 80024A40 00580E48 */  mfc2       $t6, $11 # handwritten instruction
/* 15244 80024A44 0000CCA4 */  sh         $t4, 0x0($a2)
/* 15248 80024A48 0600CDA4 */  sh         $t5, 0x6($a2)
/* 1524C 80024A4C 0C00CEA4 */  sh         $t6, 0xC($a2)
/* 15250 80024A50 0800E003 */  jr         $ra
/* 15254 80024A54 00000000 */   nop
.size func_80024964, . - func_80024964

# Handwritten function
glabel func_80024A58
/* 15258 80024A58 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 1525C 80024A5C 1000B0AF */  sw         $s0, 0x10($sp)
/* 15260 80024A60 21808000 */  addu       $s0, $a0, $zero
/* 15264 80024A64 1400B1AF */  sw         $s1, 0x14($sp)
/* 15268 80024A68 2188A000 */  addu       $s1, $a1, $zero
/* 1526C 80024A6C 1800B2AF */  sw         $s2, 0x18($sp)
/* 15270 80024A70 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 15274 80024A74 5992000C */  jal        func_80024964
/* 15278 80024A78 2190C000 */   addu      $s2, $a2, $zero
/* 1527C 80024A7C 14000C8E */  lw         $t4, 0x14($s0)
/* 15280 80024A80 18000D8E */  lw         $t5, 0x18($s0)
/* 15284 80024A84 0028CC48 */  ctc2       $t4, $5 # handwritten instruction
/* 15288 80024A88 1C000E8E */  lw         $t6, 0x1C($s0)
/* 1528C 80024A8C 0030CD48 */  ctc2       $t5, $6 # handwritten instruction
/* 15290 80024A90 0038CE48 */  ctc2       $t6, $7 # handwritten instruction
/* 15294 80024A94 14003126 */  addiu      $s1, $s1, 0x14
/* 15298 80024A98 04002D96 */  lhu        $t5, 0x4($s1)
/* 1529C 80024A9C 00002C96 */  lhu        $t4, 0x0($s1)
/* 152A0 80024AA0 006C0D00 */  sll        $t5, $t5, 16
/* 152A4 80024AA4 25608D01 */  or         $t4, $t4, $t5
/* 152A8 80024AA8 00008C48 */  mtc2       $t4, $0 # handwritten instruction
/* 152AC 80024AAC 080021CA */  lwc2       $1, 0x8($s1)
/* 152B0 80024AB0 00000000 */  nop
/* 152B4 80024AB4 00000000 */  nop
/* 152B8 80024AB8 1200484A */  MVMVA      1, 0, 0, 0, 0
/* 152BC 80024ABC 14005226 */  addiu      $s2, $s2, 0x14
/* 152C0 80024AC0 000059EA */  swc2       $25, 0x0($s2)
/* 152C4 80024AC4 04005AEA */  swc2       $26, 0x4($s2) # handwritten instruction
/* 152C8 80024AC8 08005BEA */  swc2       $27, 0x8($s2) # handwritten instruction
/* 152CC 80024ACC 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 152D0 80024AD0 1800B28F */  lw         $s2, 0x18($sp)
/* 152D4 80024AD4 1400B18F */  lw         $s1, 0x14($sp)
/* 152D8 80024AD8 1000B08F */  lw         $s0, 0x10($sp)
/* 152DC 80024ADC 0800E003 */  jr         $ra
/* 152E0 80024AE0 2000BD27 */   addiu     $sp, $sp, 0x20
.size func_80024A58, . - func_80024A58

glabel func_80024AE4
/* 152E4 80024AE4 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 152E8 80024AE8 6400B3AF */  sw         $s3, 0x64($sp)
/* 152EC 80024AEC 21988000 */  addu       $s3, $a0, $zero
/* 152F0 80024AF0 6800BFAF */  sw         $ra, 0x68($sp)
/* 152F4 80024AF4 6000B2AF */  sw         $s2, 0x60($sp)
/* 152F8 80024AF8 5C00B1AF */  sw         $s1, 0x5C($sp)
/* 152FC 80024AFC 5800B0AF */  sw         $s0, 0x58($sp)
/* 15300 80024B00 00006296 */  lhu        $v0, 0x0($s3)
/* 15304 80024B04 00000000 */  nop
/* 15308 80024B08 80004230 */  andi       $v0, $v0, 0x80
/* 1530C 80024B0C 04004010 */  beqz       $v0, .L80024B20
/* 15310 80024B10 2120A000 */   addu      $a0, $a1, $zero
/* 15314 80024B14 10007126 */  addiu      $s1, $s3, 0x10
/* 15318 80024B18 D4920008 */  j          .L80024B50
/* 1531C 80024B1C 2C007226 */   addiu     $s2, $s3, 0x2C
.L80024B20:
/* 15320 80024B20 1800B227 */  addiu      $s2, $sp, 0x18
/* 15324 80024B24 1000B127 */  addiu      $s1, $sp, 0x10
/* 15328 80024B28 4C006526 */  addiu      $a1, $s3, 0x4C
/* 1532C 80024B2C 9692000C */  jal        func_80024A58
/* 15330 80024B30 21304002 */   addu      $a2, $s2, $zero
/* 15334 80024B34 2C00A297 */  lhu        $v0, 0x2C($sp)
/* 15338 80024B38 3000A397 */  lhu        $v1, 0x30($sp)
/* 1533C 80024B3C 1000A2A7 */  sh         $v0, 0x10($sp)
/* 15340 80024B40 020023A6 */  sh         $v1, 0x2($s1)
/* 15344 80024B44 3400A297 */  lhu        $v0, 0x34($sp)
/* 15348 80024B48 00000000 */  nop
/* 1534C 80024B4C 040022A6 */  sh         $v0, 0x4($s1)
.L80024B50:
/* 15350 80024B50 07006292 */  lbu        $v0, 0x7($s3)
/* 15354 80024B54 00000000 */  nop
/* 15358 80024B58 C0180200 */  sll        $v1, $v0, 3
/* 1535C 80024B5C 23186200 */  subu       $v1, $v1, $v0
/* 15360 80024B60 00190300 */  sll        $v1, $v1, 4
/* 15364 80024B64 0780023C */  lui        $v0, %hi(D_800725F8)
/* 15368 80024B68 F8254224 */  addiu      $v0, $v0, %lo(D_800725F8)
/* 1536C 80024B6C 21806200 */  addu       $s0, $v1, $v0
/* 15370 80024B70 ED92000C */  jal        func_80024BB4
/* 15374 80024B74 21200002 */   addu      $a0, $s0, $zero
/* 15378 80024B78 03004010 */  beqz       $v0, .L80024B88
/* 1537C 80024B7C 21200002 */   addu      $a0, $s0, $zero
/* 15380 80024B80 F292000C */  jal        func_80024BC8
/* 15384 80024B84 21282002 */   addu      $a1, $s1, $zero
.L80024B88:
/* 15388 80024B88 28000426 */  addiu      $a0, $s0, 0x28
/* 1538C 80024B8C 21284002 */  addu       $a1, $s2, $zero
/* 15390 80024B90 5992000C */  jal        func_80024964
/* 15394 80024B94 6C006626 */   addiu     $a2, $s3, 0x6C
/* 15398 80024B98 6800BF8F */  lw         $ra, 0x68($sp)
/* 1539C 80024B9C 6400B38F */  lw         $s3, 0x64($sp)
/* 153A0 80024BA0 6000B28F */  lw         $s2, 0x60($sp)
/* 153A4 80024BA4 5C00B18F */  lw         $s1, 0x5C($sp)
/* 153A8 80024BA8 5800B08F */  lw         $s0, 0x58($sp)
/* 153AC 80024BAC 0800E003 */  jr         $ra
/* 153B0 80024BB0 7000BD27 */   addiu     $sp, $sp, 0x70
.size func_80024AE4, . - func_80024AE4

glabel func_80024BB4
/* 153B4 80024BB4 00008294 */  lhu        $v0, 0x0($a0)
/* 153B8 80024BB8 00000000 */  nop
/* 153BC 80024BBC 07004230 */  andi       $v0, $v0, 0x7
/* 153C0 80024BC0 0800E003 */  jr         $ra
/* 153C4 80024BC4 2B100200 */   sltu      $v0, $zero, $v0
.size func_80024BB4, . - func_80024BB4
