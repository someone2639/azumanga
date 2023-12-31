.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

glabel VSync
/* 8E9C 8001869C 0680023C */  lui        $v0, %hi(D_80062858)
/* 8EA0 800186A0 5828428C */  lw         $v0, %lo(D_80062858)($v0)
/* 8EA4 800186A4 0680053C */  lui        $a1, %hi(D_8006285C)
/* 8EA8 800186A8 5C28A58C */  lw         $a1, %lo(D_8006285C)($a1)
/* 8EAC 800186AC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 8EB0 800186B0 2000BFAF */  sw         $ra, 0x20($sp)
/* 8EB4 800186B4 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 8EB8 800186B8 1800B0AF */  sw         $s0, 0x18($sp)
/* 8EBC 800186BC 0000508C */  lw         $s0, 0x0($v0)
.L800186C0:
/* 8EC0 800186C0 0000A28C */  lw         $v0, 0x0($a1)
/* 8EC4 800186C4 00000000 */  nop
/* 8EC8 800186C8 1000A2AF */  sw         $v0, 0x10($sp)
/* 8ECC 800186CC 1000A38F */  lw         $v1, 0x10($sp)
/* 8ED0 800186D0 0000A28C */  lw         $v0, 0x0($a1)
/* 8ED4 800186D4 00000000 */  nop
/* 8ED8 800186D8 F9FF6214 */  bne        $v1, $v0, .L800186C0
/* 8EDC 800186DC 00000000 */   nop
/* 8EE0 800186E0 1000A28F */  lw         $v0, 0x10($sp)
/* 8EE4 800186E4 0680033C */  lui        $v1, %hi(D_80062860)
/* 8EE8 800186E8 6028638C */  lw         $v1, %lo(D_80062860)($v1)
/* 8EEC 800186EC 00000000 */  nop
/* 8EF0 800186F0 23104300 */  subu       $v0, $v0, $v1
/* 8EF4 800186F4 05008104 */  bgez       $a0, .L8001870C
/* 8EF8 800186F8 FFFF5130 */   andi      $s1, $v0, 0xFFFF
/* 8EFC 800186FC 0680023C */  lui        $v0, %hi(D_80063990)
/* 8F00 80018700 9039428C */  lw         $v0, %lo(D_80063990)($v0)
/* 8F04 80018704 00620008 */  j          VSYNC_OBJ_164
/* 8F08 80018708 00000000 */   nop
.L8001870C:
/* 8F0C 8001870C 01000224 */  addiu      $v0, $zero, 0x1
/* 8F10 80018710 3A008210 */  beq        $a0, $v0, .L800187FC
/* 8F14 80018714 00000000 */   nop
/* 8F18 80018718 07008018 */  blez       $a0, .L80018738
/* 8F1C 8001871C 00000000 */   nop
/* 8F20 80018720 0680023C */  lui        $v0, %hi(D_80062864)
/* 8F24 80018724 6428428C */  lw         $v0, %lo(D_80062864)($v0)
/* 8F28 80018728 00000000 */  nop
/* 8F2C 8001872C FFFF4224 */  addiu      $v0, $v0, -0x1
/* 8F30 80018730 D0610008 */  j          VSYNC_OBJ_A4
/* 8F34 80018734 21104400 */   addu      $v0, $v0, $a0
.L80018738:
/* 8F38 80018738 0680023C */  lui        $v0, %hi(D_80062864)
/* 8F3C 8001873C 6428428C */  lw         $v0, %lo(D_80062864)($v0)
.size VSync, . - VSync

glabel VSYNC_OBJ_A4
/* 8F40 80018740 02008018 */  blez       $a0, .L8001874C
/* 8F44 80018744 21280000 */   addu      $a1, $zero, $zero
/* 8F48 80018748 FFFF8524 */  addiu      $a1, $a0, -0x1
.L8001874C:
/* 8F4C 8001874C 0562000C */  jal        VSYNC_OBJ_178
/* 8F50 80018750 21204000 */   addu      $a0, $v0, $zero
/* 8F54 80018754 0680023C */  lui        $v0, %hi(D_80062858)
/* 8F58 80018758 5828428C */  lw         $v0, %lo(D_80062858)($v0)
/* 8F5C 8001875C 00000000 */  nop
/* 8F60 80018760 0000508C */  lw         $s0, 0x0($v0)
/* 8F64 80018764 0680043C */  lui        $a0, %hi(D_80063990)
/* 8F68 80018768 9039848C */  lw         $a0, %lo(D_80063990)($a0)
/* 8F6C 8001876C 01000524 */  addiu      $a1, $zero, 0x1
/* 8F70 80018770 0562000C */  jal        VSYNC_OBJ_178
/* 8F74 80018774 01008424 */   addiu     $a0, $a0, 0x1
/* 8F78 80018778 4000023C */  lui        $v0, (0x400000 >> 16)
/* 8F7C 8001877C 24100202 */  and        $v0, $s0, $v0
/* 8F80 80018780 0F004010 */  beqz       $v0, .L800187C0
/* 8F84 80018784 00000000 */   nop
/* 8F88 80018788 0680033C */  lui        $v1, %hi(D_80062858)
/* 8F8C 8001878C 5828638C */  lw         $v1, %lo(D_80062858)($v1)
/* 8F90 80018790 00000000 */  nop
/* 8F94 80018794 0000628C */  lw         $v0, 0x0($v1)
/* 8F98 80018798 00000000 */  nop
/* 8F9C 8001879C 26100202 */  xor        $v0, $s0, $v0
/* 8FA0 800187A0 07004004 */  bltz       $v0, .L800187C0
/* 8FA4 800187A4 0080043C */   lui       $a0, (0x80000000 >> 16)
.L800187A8:
/* 8FA8 800187A8 0000628C */  lw         $v0, 0x0($v1)
/* 8FAC 800187AC 00000000 */  nop
/* 8FB0 800187B0 26100202 */  xor        $v0, $s0, $v0
/* 8FB4 800187B4 24104400 */  and        $v0, $v0, $a0
/* 8FB8 800187B8 FBFF4010 */  beqz       $v0, .L800187A8
/* 8FBC 800187BC 00000000 */   nop
.L800187C0:
/* 8FC0 800187C0 0680023C */  lui        $v0, %hi(D_80063990)
/* 8FC4 800187C4 9039428C */  lw         $v0, %lo(D_80063990)($v0)
/* 8FC8 800187C8 0680043C */  lui        $a0, %hi(D_8006285C)
/* 8FCC 800187CC 5C28848C */  lw         $a0, %lo(D_8006285C)($a0)
/* 8FD0 800187D0 0680013C */  lui        $at, %hi(D_80062864)
/* 8FD4 800187D4 642822AC */  sw         $v0, %lo(D_80062864)($at)
.L800187D8:
/* 8FD8 800187D8 0000828C */  lw         $v0, 0x0($a0)
/* 8FDC 800187DC 0680013C */  lui        $at, %hi(D_80062860)
/* 8FE0 800187E0 602822AC */  sw         $v0, %lo(D_80062860)($at)
/* 8FE4 800187E4 0680033C */  lui        $v1, %hi(D_80062860)
/* 8FE8 800187E8 6028638C */  lw         $v1, %lo(D_80062860)($v1)
/* 8FEC 800187EC 0000828C */  lw         $v0, 0x0($a0)
/* 8FF0 800187F0 00000000 */  nop
/* 8FF4 800187F4 F8FF6214 */  bne        $v1, $v0, .L800187D8
/* 8FF8 800187F8 00000000 */   nop
.L800187FC:
/* 8FFC 800187FC 21102002 */  addu       $v0, $s1, $zero
.size VSYNC_OBJ_A4, . - VSYNC_OBJ_A4

glabel VSYNC_OBJ_164
/* 9000 80018800 2000BF8F */  lw         $ra, 0x20($sp)
/* 9004 80018804 1C00B18F */  lw         $s1, 0x1C($sp)
/* 9008 80018808 1800B08F */  lw         $s0, 0x18($sp)
/* 900C 8001880C 0800E003 */  jr         $ra
/* 9010 80018810 2800BD27 */   addiu     $sp, $sp, 0x28
.size VSYNC_OBJ_164, . - VSYNC_OBJ_164

glabel VSYNC_OBJ_178
/* 9014 80018814 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9018 80018818 C02B0500 */  sll        $a1, $a1, 15
/* 901C 8001881C 1000A5AF */  sw         $a1, 0x10($sp)
/* 9020 80018820 0680023C */  lui        $v0, %hi(D_80063990)
/* 9024 80018824 9039428C */  lw         $v0, %lo(D_80063990)($v0)
/* 9028 80018828 00000000 */  nop
/* 902C 8001882C 2A104400 */  slt        $v0, $v0, $a0
/* 9030 80018830 1A004010 */  beqz       $v0, VSYNC_OBJ_200
/* 9034 80018834 1800BFAF */   sw        $ra, 0x18($sp)
/* 9038 80018838 FFFF0324 */  addiu      $v1, $zero, -0x1
.L8001883C:
/* 903C 8001883C 1000A28F */  lw         $v0, 0x10($sp)
/* 9040 80018840 00000000 */  nop
/* 9044 80018844 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 9048 80018848 1000A2AF */  sw         $v0, 0x10($sp)
/* 904C 8001884C 1000A28F */  lw         $v0, 0x10($sp)
/* 9050 80018850 00000000 */  nop
/* 9054 80018854 0B004314 */  bne        $v0, $v1, .L80018884
/* 9058 80018858 00000000 */   nop
/* 905C 8001885C 0180043C */  lui        $a0, %hi(D_80010D8C)
/* 9060 80018860 2D62000C */  jal        func_800188B4
/* 9064 80018864 8C0D8424 */   addiu     $a0, $a0, %lo(D_80010D8C)
/* 9068 80018868 3362000C */  jal        ChangeClearPAD
/* 906C 8001886C 21200000 */   addu      $a0, $zero, $zero
/* 9070 80018870 03000424 */  addiu      $a0, $zero, 0x3
/* 9074 80018874 3762000C */  jal        ChangeClearRCnt
/* 9078 80018878 21280000 */   addu      $a1, $zero, $zero
/* 907C 8001887C 27620008 */  j          VSYNC_OBJ_200
/* 9080 80018880 00000000 */   nop
.L80018884:
/* 9084 80018884 0680023C */  lui        $v0, %hi(D_80063990)
/* 9088 80018888 9039428C */  lw         $v0, %lo(D_80063990)($v0)
/* 908C 8001888C 00000000 */  nop
/* 9090 80018890 2A104400 */  slt        $v0, $v0, $a0
/* 9094 80018894 E9FF4014 */  bnez       $v0, .L8001883C
/* 9098 80018898 00000000 */   nop
.size VSYNC_OBJ_178, . - VSYNC_OBJ_178

glabel VSYNC_OBJ_200
/* 909C 8001889C 1800BF8F */  lw         $ra, 0x18($sp)
/* 90A0 800188A0 2000BD27 */  addiu      $sp, $sp, 0x20
/* 90A4 800188A4 0800E003 */  jr         $ra
/* 90A8 800188A8 00000000 */   nop
.size VSYNC_OBJ_200, . - VSYNC_OBJ_200

glabel D_800188AC
/* 90AC 800188AC */ .word 0x00017350 # invalid instruction
/* 90B0 800188B0 */ .word 0x00470000 # invalid instruction

glabel func_800188B4
/* 90B4 800188B4 */ .word 0x240A00B0
/* 90B8 800188B8 */ .word 0x01400008
/* 90BC 800188BC */ .word 0x2409003F
/* 90C0 800188C0 */ .word 0x00000000
/* 90C4 800188C4 */ .word 0x00000000
/* 90C8 800188C8 */ .word 0x00000000
.size D_800188AC, . - D_800188AC
