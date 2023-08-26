.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

glabel SpuSetReverbModeParam
/* 36130 80045930 78FFBD27 */  addiu      $sp, $sp, -0x88
/* 36134 80045934 6800B2AF */  sw         $s2, 0x68($sp)
/* 36138 80045938 21908000 */  addu       $s2, $a0, $zero
/* 3613C 8004593C 7C00B7AF */  sw         $s7, 0x7C($sp)
/* 36140 80045940 21B80000 */  addu       $s7, $zero, $zero
/* 36144 80045944 7000B4AF */  sw         $s4, 0x70($sp)
/* 36148 80045948 21A00000 */  addu       $s4, $zero, $zero
/* 3614C 8004594C 7800B6AF */  sw         $s6, 0x78($sp)
/* 36150 80045950 21B00000 */  addu       $s6, $zero, $zero
/* 36154 80045954 8400BFAF */  sw         $ra, 0x84($sp)
/* 36158 80045958 8000BEAF */  sw         $fp, 0x80($sp)
/* 3615C 8004595C 7400B5AF */  sw         $s5, 0x74($sp)
/* 36160 80045960 6C00B3AF */  sw         $s3, 0x6C($sp)
/* 36164 80045964 6400B1AF */  sw         $s1, 0x64($sp)
/* 36168 80045968 6000B0AF */  sw         $s0, 0x60($sp)
/* 3616C 8004596C 5800A0AF */  sw         $zero, 0x58($sp)
/* 36170 80045970 0000538E */  lw         $s3, 0x0($s2)
/* 36174 80045974 21F00000 */  addu       $fp, $zero, $zero
/* 36178 80045978 0100752E */  sltiu      $s5, $s3, 0x1
/* 3617C 8004597C 0400A016 */  bnez       $s5, .L80045990
/* 36180 80045980 1000A0AF */   sw        $zero, 0x10($sp)
/* 36184 80045984 01006232 */  andi       $v0, $s3, 0x1
/* 36188 80045988 43004010 */  beqz       $v0, S_SRMP_OBJ_168
/* 3618C 8004598C 00000000 */   nop
.L80045990:
/* 36190 80045990 0400508E */  lw         $s0, 0x4($s2)
/* 36194 80045994 00000000 */  nop
/* 36198 80045998 00010232 */  andi       $v0, $s0, 0x100
/* 3619C 8004599C 04004010 */  beqz       $v0, .L800459B0
/* 361A0 800459A0 FFFE0224 */   addiu     $v0, $zero, -0x101
/* 361A4 800459A4 24800202 */  and        $s0, $s0, $v0
/* 361A8 800459A8 01000824 */  addiu      $t0, $zero, 0x1
/* 361AC 800459AC 5800A8AF */  sw         $t0, 0x58($sp)
.L800459B0:
/* 361B0 800459B0 0A00022E */  sltiu      $v0, $s0, 0xA
/* 361B4 800459B4 09004010 */  beqz       $v0, .L800459DC
/* 361B8 800459B8 80101000 */   sll       $v0, $s0, 2
/* 361BC 800459BC 0780043C */  lui        $a0, %hi(D_80069A1C)
/* 361C0 800459C0 21208200 */  addu       $a0, $a0, $v0
/* 361C4 800459C4 1C9A848C */  lw         $a0, %lo(D_80069A1C)($a0)
/* 361C8 800459C8 0780113C */  lui        $s1, %hi(D_80069A1C)
/* 361CC 800459CC 2816010C */  jal        _SpuIsInAllocateArea_
/* 361D0 800459D0 1C9A3126 */   addiu     $s1, $s1, %lo(D_80069A1C)
/* 361D4 800459D4 03004010 */  beqz       $v0, .L800459E4
/* 361D8 800459D8 01001424 */   addiu     $s4, $zero, 0x1
.L800459DC:
/* 361DC 800459DC 75170108 */  j          S_SRMP_OBJ_4A4
/* 361E0 800459E0 FFFF0224 */   addiu     $v0, $zero, -0x1
.L800459E4:
/* 361E4 800459E4 1000A627 */  addiu      $a2, $sp, 0x10
/* 361E8 800459E8 43000524 */  addiu      $a1, $zero, 0x43
/* 361EC 800459EC 0780013C */  lui        $at, %hi(D_80069890)
/* 361F0 800459F0 909830AC */  sw         $s0, %lo(D_80069890)($at)
/* 361F4 800459F4 0780033C */  lui        $v1, %hi(D_80069890)
/* 361F8 800459F8 9098638C */  lw         $v1, %lo(D_80069890)($v1)
/* 361FC 800459FC FFFF0724 */  addiu      $a3, $zero, -0x1
/* 36200 80045A00 80200300 */  sll        $a0, $v1, 2
/* 36204 80045A04 21209100 */  addu       $a0, $a0, $s1
/* 36208 80045A08 00110300 */  sll        $v0, $v1, 4
/* 3620C 80045A0C 21104300 */  addu       $v0, $v0, $v1
/* 36210 80045A10 80100200 */  sll        $v0, $v0, 2
/* 36214 80045A14 0780033C */  lui        $v1, %hi(D_80069E4C)
/* 36218 80045A18 4C9E6324 */  addiu      $v1, $v1, %lo(D_80069E4C)
/* 3621C 80045A1C 0000848C */  lw         $a0, 0x0($a0)
/* 36220 80045A20 21184300 */  addu       $v1, $v0, $v1
/* 36224 80045A24 0780013C */  lui        $at, %hi(D_80069888)
/* 36228 80045A28 889824AC */  sw         $a0, %lo(D_80069888)($at)
.L80045A2C:
/* 3622C 80045A2C 00006290 */  lbu        $v0, 0x0($v1)
/* 36230 80045A30 01006324 */  addiu      $v1, $v1, 0x1
/* 36234 80045A34 FFFFA524 */  addiu      $a1, $a1, -0x1
/* 36238 80045A38 0000C2A0 */  sb         $v0, 0x0($a2)
/* 3623C 80045A3C FBFFA714 */  bne        $a1, $a3, .L80045A2C
/* 36240 80045A40 0100C624 */   addiu     $a2, $a2, 0x1
/* 36244 80045A44 0780043C */  lui        $a0, %hi(D_80069890)
/* 36248 80045A48 90988424 */  addiu      $a0, $a0, %lo(D_80069890)
/* 3624C 80045A4C 0000838C */  lw         $v1, 0x0($a0)
/* 36250 80045A50 07000224 */  addiu      $v0, $zero, 0x7
/* 36254 80045A54 05006210 */  beq        $v1, $v0, .L80045A6C
/* 36258 80045A58 08000224 */   addiu     $v0, $zero, 0x8
/* 3625C 80045A5C 07006210 */  beq        $v1, $v0, .L80045A7C
/* 36260 80045A60 7F000224 */   addiu     $v0, $zero, 0x7F
/* 36264 80045A64 A2160108 */  j          S_SRMP_OBJ_158
/* 36268 80045A68 00000000 */   nop
.L80045A6C:
/* 3626C 80045A6C 7F000224 */  addiu      $v0, $zero, 0x7F
/* 36270 80045A70 0C0082AC */  sw         $v0, 0xC($a0)
/* 36274 80045A74 A6160108 */  j          S_SRMP_OBJ_168
/* 36278 80045A78 080082AC */   sw        $v0, 0x8($a0)
.L80045A7C:
/* 3627C 80045A7C 0C0080AC */  sw         $zero, 0xC($a0)
/* 36280 80045A80 A6160108 */  j          S_SRMP_OBJ_168
/* 36284 80045A84 080082AC */   sw        $v0, 0x8($a0)
.size SpuSetReverbModeParam, . - SpuSetReverbModeParam

glabel S_SRMP_OBJ_158
/* 36288 80045A88 0780023C */  lui        $v0, %hi(D_8006989C)
/* 3628C 80045A8C 9C984224 */  addiu      $v0, $v0, %lo(D_8006989C)
/* 36290 80045A90 000040AC */  sw         $zero, 0x0($v0)
/* 36294 80045A94 FCFF40AC */  sw         $zero, -0x4($v0)
.size S_SRMP_OBJ_158, . - S_SRMP_OBJ_158

glabel S_SRMP_OBJ_168
/* 36298 80045A98 0300A016 */  bnez       $s5, .L80045AA8
/* 3629C 80045A9C 08006232 */   andi      $v0, $s3, 0x8
/* 362A0 80045AA0 45004010 */  beqz       $v0, .L80045BB8
/* 362A4 80045AA4 00000000 */   nop
.L80045AA8:
/* 362A8 80045AA8 0780033C */  lui        $v1, %hi(D_80069890)
/* 362AC 80045AAC 9098638C */  lw         $v1, %lo(D_80069890)($v1)
/* 362B0 80045AB0 00000000 */  nop
/* 362B4 80045AB4 09006228 */  slti       $v0, $v1, 0x9
/* 362B8 80045AB8 3F004010 */  beqz       $v0, .L80045BB8
/* 362BC 80045ABC 07006228 */   slti      $v0, $v1, 0x7
/* 362C0 80045AC0 3D004014 */  bnez       $v0, .L80045BB8
/* 362C4 80045AC4 00000000 */   nop
/* 362C8 80045AC8 15008016 */  bnez       $s4, .L80045B20
/* 362CC 80045ACC 01001624 */   addiu     $s6, $zero, 0x1
/* 362D0 80045AD0 1000A527 */  addiu      $a1, $sp, 0x10
/* 362D4 80045AD4 43000424 */  addiu      $a0, $zero, 0x43
/* 362D8 80045AD8 0780023C */  lui        $v0, %hi(D_80069890)
/* 362DC 80045ADC 9098428C */  lw         $v0, %lo(D_80069890)($v0)
/* 362E0 80045AE0 FFFF0624 */  addiu      $a2, $zero, -0x1
/* 362E4 80045AE4 00190200 */  sll        $v1, $v0, 4
/* 362E8 80045AE8 21186200 */  addu       $v1, $v1, $v0
/* 362EC 80045AEC 80180300 */  sll        $v1, $v1, 2
/* 362F0 80045AF0 0780023C */  lui        $v0, %hi(D_80069E4C)
/* 362F4 80045AF4 4C9E4224 */  addiu      $v0, $v0, %lo(D_80069E4C)
/* 362F8 80045AF8 21186200 */  addu       $v1, $v1, $v0
.L80045AFC:
/* 362FC 80045AFC 00006290 */  lbu        $v0, 0x0($v1)
/* 36300 80045B00 01006324 */  addiu      $v1, $v1, 0x1
/* 36304 80045B04 FFFF8424 */  addiu      $a0, $a0, -0x1
/* 36308 80045B08 0000A2A0 */  sb         $v0, 0x0($a1)
/* 3630C 80045B0C FBFF8614 */  bne        $a0, $a2, .L80045AFC
/* 36310 80045B10 0100A524 */   addiu     $a1, $a1, 0x1
/* 36314 80045B14 010C023C */  lui        $v0, (0xC011C00 >> 16)
/* 36318 80045B18 001C4234 */  ori        $v0, $v0, (0xC011C00 & 0xFFFF)
/* 3631C 80045B1C 1000A2AF */  sw         $v0, 0x10($sp)
.L80045B20:
/* 36320 80045B20 0281043C */  lui        $a0, (0x81020409 >> 16)
/* 36324 80045B24 0C00428E */  lw         $v0, 0xC($s2)
/* 36328 80045B28 09048434 */  ori        $a0, $a0, (0x81020409 & 0xFFFF)
/* 3632C 80045B2C 401B0200 */  sll        $v1, $v0, 13
/* 36330 80045B30 18006400 */  mult       $v1, $a0
/* 36334 80045B34 10380000 */  mfhi       $a3
/* 36338 80045B38 002B0200 */  sll        $a1, $v0, 12
/* 3633C 80045B3C 00000000 */  nop
/* 36340 80045B40 1800A400 */  mult       $a1, $a0
/* 36344 80045B44 0780013C */  lui        $at, %hi(D_80069898)
/* 36348 80045B48 989822AC */  sw         $v0, %lo(D_80069898)($at)
/* 3634C 80045B4C 2110E300 */  addu       $v0, $a3, $v1
/* 36350 80045B50 83110200 */  sra        $v0, $v0, 6
/* 36354 80045B54 C31F0300 */  sra        $v1, $v1, 31
/* 36358 80045B58 23104300 */  subu       $v0, $v0, $v1
/* 3635C 80045B5C 1400A497 */  lhu        $a0, 0x14($sp)
/* 36360 80045B60 3600A397 */  lhu        $v1, 0x36($sp)
/* 36364 80045B64 23104400 */  subu       $v0, $v0, $a0
/* 36368 80045B68 2800A2A7 */  sh         $v0, 0x28($sp)
/* 3636C 80045B6C 1600A297 */  lhu        $v0, 0x16($sp)
/* 36370 80045B70 10300000 */  mfhi       $a2
/* 36374 80045B74 2120C500 */  addu       $a0, $a2, $a1
/* 36378 80045B78 83210400 */  sra        $a0, $a0, 6
/* 3637C 80045B7C C32F0500 */  sra        $a1, $a1, 31
/* 36380 80045B80 23208500 */  subu       $a0, $a0, $a1
/* 36384 80045B84 23108200 */  subu       $v0, $a0, $v0
/* 36388 80045B88 2A00A2A7 */  sh         $v0, 0x2A($sp)
/* 3638C 80045B8C 2E00A297 */  lhu        $v0, 0x2E($sp)
/* 36390 80045B90 21186400 */  addu       $v1, $v1, $a0
/* 36394 80045B94 3400A3A7 */  sh         $v1, 0x34($sp)
/* 36398 80045B98 4E00A397 */  lhu        $v1, 0x4E($sp)
/* 3639C 80045B9C 21104400 */  addu       $v0, $v0, $a0
/* 363A0 80045BA0 2C00A2A7 */  sh         $v0, 0x2C($sp)
/* 363A4 80045BA4 4C00A297 */  lhu        $v0, 0x4C($sp)
/* 363A8 80045BA8 21186400 */  addu       $v1, $v1, $a0
/* 363AC 80045BAC 4A00A3A7 */  sh         $v1, 0x4A($sp)
/* 363B0 80045BB0 21104400 */  addu       $v0, $v0, $a0
/* 363B4 80045BB4 4800A2A7 */  sh         $v0, 0x48($sp)
.L80045BB8:
/* 363B8 80045BB8 0300A016 */  bnez       $s5, .L80045BC8
/* 363BC 80045BBC 10006232 */   andi      $v0, $s3, 0x10
/* 363C0 80045BC0 32004010 */  beqz       $v0, .L80045C8C
/* 363C4 80045BC4 00000000 */   nop
.L80045BC8:
/* 363C8 80045BC8 0780033C */  lui        $v1, %hi(D_80069890)
/* 363CC 80045BCC 9098638C */  lw         $v1, %lo(D_80069890)($v1)
/* 363D0 80045BD0 00000000 */  nop
/* 363D4 80045BD4 09006228 */  slti       $v0, $v1, 0x9
/* 363D8 80045BD8 2C004010 */  beqz       $v0, .L80045C8C
/* 363DC 80045BDC 07006228 */   slti      $v0, $v1, 0x7
/* 363E0 80045BE0 2A004014 */  bnez       $v0, .L80045C8C
/* 363E4 80045BE4 00000000 */   nop
/* 363E8 80045BE8 19008016 */  bnez       $s4, .L80045C50
/* 363EC 80045BEC 01001E24 */   addiu     $fp, $zero, 0x1
/* 363F0 80045BF0 1300C016 */  bnez       $s6, .L80045C40
/* 363F4 80045BF4 1000A527 */   addiu     $a1, $sp, 0x10
/* 363F8 80045BF8 43000424 */  addiu      $a0, $zero, 0x43
/* 363FC 80045BFC 0780023C */  lui        $v0, %hi(D_80069890)
/* 36400 80045C00 9098428C */  lw         $v0, %lo(D_80069890)($v0)
/* 36404 80045C04 FFFF0624 */  addiu      $a2, $zero, -0x1
/* 36408 80045C08 00190200 */  sll        $v1, $v0, 4
/* 3640C 80045C0C 21186200 */  addu       $v1, $v1, $v0
/* 36410 80045C10 80180300 */  sll        $v1, $v1, 2
/* 36414 80045C14 0780023C */  lui        $v0, %hi(D_80069E4C)
/* 36418 80045C18 4C9E4224 */  addiu      $v0, $v0, %lo(D_80069E4C)
/* 3641C 80045C1C 21186200 */  addu       $v1, $v1, $v0
.L80045C20:
/* 36420 80045C20 00006290 */  lbu        $v0, 0x0($v1)
/* 36424 80045C24 01006324 */  addiu      $v1, $v1, 0x1
/* 36428 80045C28 FFFF8424 */  addiu      $a0, $a0, -0x1
/* 3642C 80045C2C 0000A2A0 */  sb         $v0, 0x0($a1)
/* 36430 80045C30 FBFF8614 */  bne        $a0, $a2, .L80045C20
/* 36434 80045C34 0100A524 */   addiu     $a1, $a1, 0x1
/* 36438 80045C38 13170108 */  j          S_SRMP_OBJ_31C
/* 3643C 80045C3C 80000224 */   addiu     $v0, $zero, 0x80
.L80045C40:
/* 36440 80045C40 1000A28F */  lw         $v0, 0x10($sp)
/* 36444 80045C44 00000000 */  nop
/* 36448 80045C48 80004234 */  ori        $v0, $v0, 0x80
.size S_SRMP_OBJ_168, . - S_SRMP_OBJ_168

glabel S_SRMP_OBJ_31C
/* 3644C 80045C4C 1000A2AF */  sw         $v0, 0x10($sp)
.L80045C50:
/* 36450 80045C50 0281043C */  lui        $a0, (0x81020409 >> 16)
/* 36454 80045C54 1000438E */  lw         $v1, 0x10($s2)
/* 36458 80045C58 09048434 */  ori        $a0, $a0, (0x81020409 & 0xFFFF)
/* 3645C 80045C5C C0110300 */  sll        $v0, $v1, 7
/* 36460 80045C60 21104300 */  addu       $v0, $v0, $v1
/* 36464 80045C64 00120200 */  sll        $v0, $v0, 8
/* 36468 80045C68 18004400 */  mult       $v0, $a0
/* 3646C 80045C6C 0780013C */  lui        $at, %hi(D_8006989C)
/* 36470 80045C70 9C9823AC */  sw         $v1, %lo(D_8006989C)($at)
/* 36474 80045C74 10400000 */  mfhi       $t0
/* 36478 80045C78 21180201 */  addu       $v1, $t0, $v0
/* 3647C 80045C7C 83190300 */  sra        $v1, $v1, 6
/* 36480 80045C80 C3170200 */  sra        $v0, $v0, 31
/* 36484 80045C84 23186200 */  subu       $v1, $v1, $v0
/* 36488 80045C88 2200A3A7 */  sh         $v1, 0x22($sp)
.L80045C8C:
/* 3648C 80045C8C 0F008012 */  beqz       $s4, .L80045CCC
/* 36490 80045C90 00000000 */   nop
/* 36494 80045C94 0780033C */  lui        $v1, %hi(D_8006910C)
/* 36498 80045C98 0C91638C */  lw         $v1, %lo(D_8006910C)($v1)
/* 3649C 80045C9C 00000000 */  nop
/* 364A0 80045CA0 AA016294 */  lhu        $v0, 0x1AA($v1)
/* 364A4 80045CA4 00000000 */  nop
/* 364A8 80045CA8 C2110200 */  srl        $v0, $v0, 7
/* 364AC 80045CAC 01005730 */  andi       $s7, $v0, 0x1
/* 364B0 80045CB0 1F00E012 */  beqz       $s7, S_SRMP_OBJ_400
/* 364B4 80045CB4 00000000 */   nop
/* 364B8 80045CB8 AA016294 */  lhu        $v0, 0x1AA($v1)
/* 364BC 80045CBC 00000000 */  nop
/* 364C0 80045CC0 7FFF4230 */  andi       $v0, $v0, 0xFF7F
/* 364C4 80045CC4 4C170108 */  j          S_SRMP_OBJ_400
/* 364C8 80045CC8 AA0162A4 */   sh        $v0, 0x1AA($v1)
.L80045CCC:
/* 364CC 80045CCC 0300A016 */  bnez       $s5, .L80045CDC
/* 364D0 80045CD0 02006232 */   andi      $v0, $s3, 0x2
/* 364D4 80045CD4 09004010 */  beqz       $v0, .L80045CFC
/* 364D8 80045CD8 00000000 */   nop
.L80045CDC:
/* 364DC 80045CDC 0780023C */  lui        $v0, %hi(D_8006910C)
/* 364E0 80045CE0 0C91428C */  lw         $v0, %lo(D_8006910C)($v0)
/* 364E4 80045CE4 08004396 */  lhu        $v1, 0x8($s2)
/* 364E8 80045CE8 00000000 */  nop
/* 364EC 80045CEC 840143A4 */  sh         $v1, 0x184($v0)
/* 364F0 80045CF0 08004296 */  lhu        $v0, 0x8($s2)
/* 364F4 80045CF4 0780013C */  lui        $at, %hi(D_80069894)
/* 364F8 80045CF8 949822A4 */  sh         $v0, %lo(D_80069894)($at)
.L80045CFC:
/* 364FC 80045CFC 0300A016 */  bnez       $s5, .L80045D0C
/* 36500 80045D00 04006232 */   andi      $v0, $s3, 0x4
/* 36504 80045D04 13004010 */  beqz       $v0, S_SRMP_OBJ_424
/* 36508 80045D08 00000000 */   nop
.L80045D0C:
/* 3650C 80045D0C 0780023C */  lui        $v0, %hi(D_8006910C)
/* 36510 80045D10 0C91428C */  lw         $v0, %lo(D_8006910C)($v0)
/* 36514 80045D14 0A004396 */  lhu        $v1, 0xA($s2)
/* 36518 80045D18 00000000 */  nop
/* 3651C 80045D1C 860143A4 */  sh         $v1, 0x186($v0)
/* 36520 80045D20 0A004296 */  lhu        $v0, 0xA($s2)
/* 36524 80045D24 0780013C */  lui        $at, %hi(D_80069896)
/* 36528 80045D28 55170108 */  j          S_SRMP_OBJ_424
/* 3652C 80045D2C 969822A4 */   sh        $v0, %lo(D_80069896)($at)
.size S_SRMP_OBJ_31C, . - S_SRMP_OBJ_31C

glabel S_SRMP_OBJ_400
/* 36530 80045D30 0780023C */  lui        $v0, %hi(D_8006910C)
/* 36534 80045D34 0C91428C */  lw         $v0, %lo(D_8006910C)($v0)
/* 36538 80045D38 00000000 */  nop
/* 3653C 80045D3C 840140A4 */  sh         $zero, 0x184($v0)
/* 36540 80045D40 860140A4 */  sh         $zero, 0x186($v0)
/* 36544 80045D44 0780023C */  lui        $v0, %hi(D_80069894)
/* 36548 80045D48 94984224 */  addiu      $v0, $v0, %lo(D_80069894)
/* 3654C 80045D4C 000040A4 */  sh         $zero, 0x0($v0)
/* 36550 80045D50 020040A4 */  sh         $zero, 0x2($v0)
.size S_SRMP_OBJ_400, . - S_SRMP_OBJ_400

glabel S_SRMP_OBJ_424
/* 36554 80045D54 05008016 */  bnez       $s4, .L80045D6C
/* 36558 80045D58 00000000 */   nop
/* 3655C 80045D5C 0300C016 */  bnez       $s6, .L80045D6C
/* 36560 80045D60 00000000 */   nop
/* 36564 80045D64 0300C013 */  beqz       $fp, .L80045D74
/* 36568 80045D68 00000000 */   nop
.L80045D6C:
/* 3656C 80045D6C 8417010C */  jal        _spu_setReverbAttr
/* 36570 80045D70 1000A427 */   addiu     $a0, $sp, 0x10
.L80045D74:
/* 36574 80045D74 5800A88F */  lw         $t0, 0x58($sp)
/* 36578 80045D78 00000000 */  nop
/* 3657C 80045D7C 05000011 */  beqz       $t0, .L80045D94
/* 36580 80045D80 00000000 */   nop
/* 36584 80045D84 0780043C */  lui        $a0, %hi(D_80069890)
/* 36588 80045D88 9098848C */  lw         $a0, %lo(D_80069890)($a0)
/* 3658C 80045D8C DC18010C */  jal        SpuClearReverbWorkArea
/* 36590 80045D90 00000000 */   nop
.L80045D94:
/* 36594 80045D94 0E008012 */  beqz       $s4, .L80045DD0
/* 36598 80045D98 D1000424 */   addiu     $a0, $zero, 0xD1
/* 3659C 80045D9C 0780053C */  lui        $a1, %hi(D_80069888)
/* 365A0 80045DA0 8898A58C */  lw         $a1, %lo(D_80069888)($a1)
/* 365A4 80045DA4 46CD000C */  jal        _spu_FsetRXX
/* 365A8 80045DA8 21300000 */   addu      $a2, $zero, $zero
/* 365AC 80045DAC 0900E012 */  beqz       $s7, S_SRMP_OBJ_4A4
/* 365B0 80045DB0 21100000 */   addu      $v0, $zero, $zero
/* 365B4 80045DB4 0780033C */  lui        $v1, %hi(D_8006910C)
/* 365B8 80045DB8 0C91638C */  lw         $v1, %lo(D_8006910C)($v1)
/* 365BC 80045DBC 00000000 */  nop
/* 365C0 80045DC0 AA016294 */  lhu        $v0, 0x1AA($v1)
/* 365C4 80045DC4 00000000 */  nop
/* 365C8 80045DC8 80004234 */  ori        $v0, $v0, 0x80
/* 365CC 80045DCC AA0162A4 */  sh         $v0, 0x1AA($v1)
.L80045DD0:
/* 365D0 80045DD0 21100000 */  addu       $v0, $zero, $zero
.size S_SRMP_OBJ_424, . - S_SRMP_OBJ_424

glabel S_SRMP_OBJ_4A4
/* 365D4 80045DD4 8400BF8F */  lw         $ra, 0x84($sp)
/* 365D8 80045DD8 8000BE8F */  lw         $fp, 0x80($sp)
/* 365DC 80045DDC 7C00B78F */  lw         $s7, 0x7C($sp)
/* 365E0 80045DE0 7800B68F */  lw         $s6, 0x78($sp)
/* 365E4 80045DE4 7400B58F */  lw         $s5, 0x74($sp)
/* 365E8 80045DE8 7000B48F */  lw         $s4, 0x70($sp)
/* 365EC 80045DEC 6C00B38F */  lw         $s3, 0x6C($sp)
/* 365F0 80045DF0 6800B28F */  lw         $s2, 0x68($sp)
/* 365F4 80045DF4 6400B18F */  lw         $s1, 0x64($sp)
/* 365F8 80045DF8 6000B08F */  lw         $s0, 0x60($sp)
/* 365FC 80045DFC 0800E003 */  jr         $ra
/* 36600 80045E00 8800BD27 */   addiu     $sp, $sp, 0x88
/* 36604 80045E04 00000000 */  nop
/* 36608 80045E08 00000000 */  nop
/* 3660C 80045E0C 00000000 */  nop
.size S_SRMP_OBJ_4A4, . - S_SRMP_OBJ_4A4
