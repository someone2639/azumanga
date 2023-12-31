.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.16.1.dev0 */

glabel funcEvSpIOE
/* 492EC 80058AEC 01000224 */  addiu      $v0, $zero, 0x1
/* 492F0 80058AF0 0880013C */  lui        $at, %hi(D_80079548)
/* 492F4 80058AF4 489522AC */  sw         $v0, %lo(D_80079548)($at)
/* 492F8 80058AF8 0800E003 */  jr         $ra
/* 492FC 80058AFC 21100000 */   addu      $v0, $zero, $zero
.size funcEvSpIOE, . - funcEvSpIOE

glabel funcEvSpError
/* 49300 80058B00 01000224 */  addiu      $v0, $zero, 0x1
/* 49304 80058B04 0880013C */  lui        $at, %hi(D_8007954C)
/* 49308 80058B08 4C9522AC */  sw         $v0, %lo(D_8007954C)($at)
/* 4930C 80058B0C 0800E003 */  jr         $ra
/* 49310 80058B10 21100000 */   addu      $v0, $zero, $zero
.size funcEvSpError, . - funcEvSpError

glabel funcEvSpTimeout
/* 49314 80058B14 01000224 */  addiu      $v0, $zero, 0x1
/* 49318 80058B18 0880013C */  lui        $at, %hi(D_80079550)
/* 4931C 80058B1C 509522AC */  sw         $v0, %lo(D_80079550)($at)
/* 49320 80058B20 0800E003 */  jr         $ra
/* 49324 80058B24 21100000 */   addu      $v0, $zero, $zero
.size funcEvSpTimeout, . - funcEvSpTimeout

glabel funcEvSpNewcard
/* 49328 80058B28 01000224 */  addiu      $v0, $zero, 0x1
/* 4932C 80058B2C 0880013C */  lui        $at, %hi(D_80079554)
/* 49330 80058B30 549522AC */  sw         $v0, %lo(D_80079554)($at)
/* 49334 80058B34 0800E003 */  jr         $ra
/* 49338 80058B38 21100000 */   addu      $v0, $zero, $zero
.size funcEvSpNewcard, . - funcEvSpNewcard

glabel funcEvSpIOEx
/* 4933C 80058B3C 01000224 */  addiu      $v0, $zero, 0x1
/* 49340 80058B40 0880013C */  lui        $at, %hi(D_80079558)
/* 49344 80058B44 589522AC */  sw         $v0, %lo(D_80079558)($at)
/* 49348 80058B48 0800E003 */  jr         $ra
/* 4934C 80058B4C 21100000 */   addu      $v0, $zero, $zero
.size funcEvSpIOEx, . - funcEvSpIOEx

glabel funcEvSpErrorx
/* 49350 80058B50 01000224 */  addiu      $v0, $zero, 0x1
/* 49354 80058B54 0880013C */  lui        $at, %hi(D_8007955C)
/* 49358 80058B58 5C9522AC */  sw         $v0, %lo(D_8007955C)($at)
/* 4935C 80058B5C 0800E003 */  jr         $ra
/* 49360 80058B60 21100000 */   addu      $v0, $zero, $zero
.size funcEvSpErrorx, . - funcEvSpErrorx

glabel funcEvSpTimeoutx
/* 49364 80058B64 01000224 */  addiu      $v0, $zero, 0x1
/* 49368 80058B68 0880013C */  lui        $at, %hi(D_80079560)
/* 4936C 80058B6C 609522AC */  sw         $v0, %lo(D_80079560)($at)
/* 49370 80058B70 0800E003 */  jr         $ra
/* 49374 80058B74 21100000 */   addu      $v0, $zero, $zero
.size funcEvSpTimeoutx, . - funcEvSpTimeoutx

glabel funcEvSpNewcardx
/* 49378 80058B78 01000224 */  addiu      $v0, $zero, 0x1
/* 4937C 80058B7C 0880013C */  lui        $at, %hi(D_80079564)
/* 49380 80058B80 649522AC */  sw         $v0, %lo(D_80079564)($at)
/* 49384 80058B84 0800E003 */  jr         $ra
/* 49388 80058B88 21100000 */   addu      $v0, $zero, $zero
.size funcEvSpNewcardx, . - funcEvSpNewcardx

glabel _card_open
/* 4938C 80058B8C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 49390 80058B90 1000BFAF */  sw         $ra, 0x10($sp)
/* 49394 80058B94 8571000C */  jal        InitCARD
/* 49398 80058B98 00000000 */   nop
/* 4939C 80058B9C A971000C */  jal        StartCARD
/* 493A0 80058BA0 00000000 */   nop
/* 493A4 80058BA4 8171000C */  jal        _bu_init
/* 493A8 80058BA8 00000000 */   nop
/* 493AC 80058BAC 1000BF8F */  lw         $ra, 0x10($sp)
/* 493B0 80058BB0 1800BD27 */  addiu      $sp, $sp, 0x18
/* 493B4 80058BB4 0800E003 */  jr         $ra
/* 493B8 80058BB8 00000000 */   nop
.size _card_open, . - _card_open

glabel _card_start
/* 493BC 80058BBC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 493C0 80058BC0 1400BFAF */  sw         $ra, 0x14($sp)
/* 493C4 80058BC4 9B61000C */  jal        EnterCriticalSection
/* 493C8 80058BC8 1000B0AF */   sw        $s0, 0x10($sp)
/* 493CC 80058BCC 00F4043C */  lui        $a0, (0xF4000001 >> 16)
/* 493D0 80058BD0 01008434 */  ori        $a0, $a0, (0xF4000001 & 0xFFFF)
/* 493D4 80058BD4 04000524 */  addiu      $a1, $zero, 0x4
/* 493D8 80058BD8 00100624 */  addiu      $a2, $zero, 0x1000
/* 493DC 80058BDC 0680073C */  lui        $a3, %hi(funcEvSpIOE)
/* 493E0 80058BE0 EC8AE724 */  addiu      $a3, $a3, %lo(funcEvSpIOE)
/* 493E4 80058BE4 3710010C */  jal        OpenEvent
/* 493E8 80058BE8 21804000 */   addu      $s0, $v0, $zero
/* 493EC 80058BEC 00F4043C */  lui        $a0, (0xF4000001 >> 16)
/* 493F0 80058BF0 01008434 */  ori        $a0, $a0, (0xF4000001 & 0xFFFF)
/* 493F4 80058BF4 00800534 */  ori        $a1, $zero, 0x8000
/* 493F8 80058BF8 0680073C */  lui        $a3, %hi(funcEvSpError)
/* 493FC 80058BFC 008BE724 */  addiu      $a3, $a3, %lo(funcEvSpError)
/* 49400 80058C00 0880013C */  lui        $at, %hi(D_80079528)
/* 49404 80058C04 289522AC */  sw         $v0, %lo(D_80079528)($at)
/* 49408 80058C08 3710010C */  jal        OpenEvent
/* 4940C 80058C0C 00100624 */   addiu     $a2, $zero, 0x1000
/* 49410 80058C10 00F4043C */  lui        $a0, (0xF4000001 >> 16)
/* 49414 80058C14 01008434 */  ori        $a0, $a0, (0xF4000001 & 0xFFFF)
/* 49418 80058C18 00010524 */  addiu      $a1, $zero, 0x100
/* 4941C 80058C1C 0680073C */  lui        $a3, %hi(funcEvSpTimeout)
/* 49420 80058C20 148BE724 */  addiu      $a3, $a3, %lo(funcEvSpTimeout)
/* 49424 80058C24 0880013C */  lui        $at, %hi(D_8007952C)
/* 49428 80058C28 2C9522AC */  sw         $v0, %lo(D_8007952C)($at)
/* 4942C 80058C2C 3710010C */  jal        OpenEvent
/* 49430 80058C30 00100624 */   addiu     $a2, $zero, 0x1000
/* 49434 80058C34 00F4043C */  lui        $a0, (0xF4000001 >> 16)
/* 49438 80058C38 01008434 */  ori        $a0, $a0, (0xF4000001 & 0xFFFF)
/* 4943C 80058C3C 00200524 */  addiu      $a1, $zero, 0x2000
/* 49440 80058C40 0680073C */  lui        $a3, %hi(funcEvSpNewcard)
/* 49444 80058C44 288BE724 */  addiu      $a3, $a3, %lo(funcEvSpNewcard)
/* 49448 80058C48 0880013C */  lui        $at, %hi(D_80079530)
/* 4944C 80058C4C 309522AC */  sw         $v0, %lo(D_80079530)($at)
/* 49450 80058C50 3710010C */  jal        OpenEvent
/* 49454 80058C54 00100624 */   addiu     $a2, $zero, 0x1000
/* 49458 80058C58 00F0043C */  lui        $a0, (0xF0000011 >> 16)
/* 4945C 80058C5C 11008434 */  ori        $a0, $a0, (0xF0000011 & 0xFFFF)
/* 49460 80058C60 04000524 */  addiu      $a1, $zero, 0x4
/* 49464 80058C64 0680073C */  lui        $a3, %hi(funcEvSpIOEx)
/* 49468 80058C68 3C8BE724 */  addiu      $a3, $a3, %lo(funcEvSpIOEx)
/* 4946C 80058C6C 0880013C */  lui        $at, %hi(D_80079534)
/* 49470 80058C70 349522AC */  sw         $v0, %lo(D_80079534)($at)
/* 49474 80058C74 3710010C */  jal        OpenEvent
/* 49478 80058C78 00100624 */   addiu     $a2, $zero, 0x1000
/* 4947C 80058C7C 00F0043C */  lui        $a0, (0xF0000011 >> 16)
/* 49480 80058C80 11008434 */  ori        $a0, $a0, (0xF0000011 & 0xFFFF)
/* 49484 80058C84 00800534 */  ori        $a1, $zero, 0x8000
/* 49488 80058C88 0680073C */  lui        $a3, %hi(funcEvSpErrorx)
/* 4948C 80058C8C 508BE724 */  addiu      $a3, $a3, %lo(funcEvSpErrorx)
/* 49490 80058C90 0880013C */  lui        $at, %hi(D_80079538)
/* 49494 80058C94 389522AC */  sw         $v0, %lo(D_80079538)($at)
/* 49498 80058C98 3710010C */  jal        OpenEvent
/* 4949C 80058C9C 00100624 */   addiu     $a2, $zero, 0x1000
/* 494A0 80058CA0 00F0043C */  lui        $a0, (0xF0000011 >> 16)
/* 494A4 80058CA4 11008434 */  ori        $a0, $a0, (0xF0000011 & 0xFFFF)
/* 494A8 80058CA8 00010524 */  addiu      $a1, $zero, 0x100
/* 494AC 80058CAC 0680073C */  lui        $a3, %hi(funcEvSpTimeoutx)
/* 494B0 80058CB0 648BE724 */  addiu      $a3, $a3, %lo(funcEvSpTimeoutx)
/* 494B4 80058CB4 0880013C */  lui        $at, %hi(D_8007953C)
/* 494B8 80058CB8 3C9522AC */  sw         $v0, %lo(D_8007953C)($at)
/* 494BC 80058CBC 3710010C */  jal        OpenEvent
/* 494C0 80058CC0 00100624 */   addiu     $a2, $zero, 0x1000
/* 494C4 80058CC4 00F0043C */  lui        $a0, (0xF0000011 >> 16)
/* 494C8 80058CC8 11008434 */  ori        $a0, $a0, (0xF0000011 & 0xFFFF)
/* 494CC 80058CCC 00200524 */  addiu      $a1, $zero, 0x2000
/* 494D0 80058CD0 0680073C */  lui        $a3, %hi(funcEvSpNewcardx)
/* 494D4 80058CD4 788BE724 */  addiu      $a3, $a3, %lo(funcEvSpNewcardx)
/* 494D8 80058CD8 0880013C */  lui        $at, %hi(D_80079540)
/* 494DC 80058CDC 409522AC */  sw         $v0, %lo(D_80079540)($at)
/* 494E0 80058CE0 3710010C */  jal        OpenEvent
/* 494E4 80058CE4 00100624 */   addiu     $a2, $zero, 0x1000
/* 494E8 80058CE8 0880043C */  lui        $a0, %hi(D_80079528)
/* 494EC 80058CEC 2895848C */  lw         $a0, %lo(D_80079528)($a0)
/* 494F0 80058CF0 0880013C */  lui        $at, %hi(D_80079544)
/* 494F4 80058CF4 3B10010C */  jal        EnableEvent
/* 494F8 80058CF8 449522AC */   sw        $v0, %lo(D_80079544)($at)
/* 494FC 80058CFC 0880043C */  lui        $a0, %hi(D_8007952C)
/* 49500 80058D00 2C95848C */  lw         $a0, %lo(D_8007952C)($a0)
/* 49504 80058D04 3B10010C */  jal        EnableEvent
/* 49508 80058D08 00000000 */   nop
/* 4950C 80058D0C 0880043C */  lui        $a0, %hi(D_80079530)
/* 49510 80058D10 3095848C */  lw         $a0, %lo(D_80079530)($a0)
/* 49514 80058D14 3B10010C */  jal        EnableEvent
/* 49518 80058D18 00000000 */   nop
/* 4951C 80058D1C 0880043C */  lui        $a0, %hi(D_80079534)
/* 49520 80058D20 3495848C */  lw         $a0, %lo(D_80079534)($a0)
/* 49524 80058D24 3B10010C */  jal        EnableEvent
/* 49528 80058D28 00000000 */   nop
/* 4952C 80058D2C 0880043C */  lui        $a0, %hi(D_80079538)
/* 49530 80058D30 3895848C */  lw         $a0, %lo(D_80079538)($a0)
/* 49534 80058D34 3B10010C */  jal        EnableEvent
/* 49538 80058D38 00000000 */   nop
/* 4953C 80058D3C 0880043C */  lui        $a0, %hi(D_8007953C)
/* 49540 80058D40 3C95848C */  lw         $a0, %lo(D_8007953C)($a0)
/* 49544 80058D44 3B10010C */  jal        EnableEvent
/* 49548 80058D48 00000000 */   nop
/* 4954C 80058D4C 0880043C */  lui        $a0, %hi(D_80079540)
/* 49550 80058D50 4095848C */  lw         $a0, %lo(D_80079540)($a0)
/* 49554 80058D54 3B10010C */  jal        EnableEvent
/* 49558 80058D58 00000000 */   nop
/* 4955C 80058D5C 0880043C */  lui        $a0, %hi(D_80079544)
/* 49560 80058D60 4495848C */  lw         $a0, %lo(D_80079544)($a0)
/* 49564 80058D64 3B10010C */  jal        EnableEvent
/* 49568 80058D68 00000000 */   nop
/* 4956C 80058D6C 9B63010C */  jal        _clr_card_event
/* 49570 80058D70 00000000 */   nop
/* 49574 80058D74 01000224 */  addiu      $v0, $zero, 0x1
/* 49578 80058D78 03000216 */  bne        $s0, $v0, .L80058D88
/* 4957C 80058D7C 00000000 */   nop
/* 49580 80058D80 9F61000C */  jal        ExitCriticalSection
/* 49584 80058D84 00000000 */   nop
.L80058D88:
/* 49588 80058D88 1400BF8F */  lw         $ra, 0x14($sp)
/* 4958C 80058D8C 1000B08F */  lw         $s0, 0x10($sp)
/* 49590 80058D90 0800E003 */  jr         $ra
/* 49594 80058D94 1800BD27 */   addiu     $sp, $sp, 0x18
.size _card_start, . - _card_start

glabel _card_close
/* 49598 80058D98 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4959C 80058D9C 1000BFAF */  sw         $ra, 0x10($sp)
/* 495A0 80058DA0 BB71000C */  jal        StopCARD
/* 495A4 80058DA4 00000000 */   nop
/* 495A8 80058DA8 1000BF8F */  lw         $ra, 0x10($sp)
/* 495AC 80058DAC 1800BD27 */  addiu      $sp, $sp, 0x18
/* 495B0 80058DB0 0800E003 */  jr         $ra
/* 495B4 80058DB4 00000000 */   nop
.size _card_close, . - _card_close

glabel _card_stop
/* 495B8 80058DB8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 495BC 80058DBC 1400BFAF */  sw         $ra, 0x14($sp)
/* 495C0 80058DC0 9B61000C */  jal        EnterCriticalSection
/* 495C4 80058DC4 1000B0AF */   sw        $s0, 0x10($sp)
/* 495C8 80058DC8 0880043C */  lui        $a0, %hi(D_80079528)
/* 495CC 80058DCC 2895848C */  lw         $a0, %lo(D_80079528)($a0)
/* 495D0 80058DD0 CB0F010C */  jal        CloseEvent
/* 495D4 80058DD4 21804000 */   addu      $s0, $v0, $zero
/* 495D8 80058DD8 0880043C */  lui        $a0, %hi(D_8007952C)
/* 495DC 80058DDC 2C95848C */  lw         $a0, %lo(D_8007952C)($a0)
/* 495E0 80058DE0 CB0F010C */  jal        CloseEvent
/* 495E4 80058DE4 00000000 */   nop
/* 495E8 80058DE8 0880043C */  lui        $a0, %hi(D_80079530)
/* 495EC 80058DEC 3095848C */  lw         $a0, %lo(D_80079530)($a0)
/* 495F0 80058DF0 CB0F010C */  jal        CloseEvent
/* 495F4 80058DF4 00000000 */   nop
/* 495F8 80058DF8 0880043C */  lui        $a0, %hi(D_80079534)
/* 495FC 80058DFC 3495848C */  lw         $a0, %lo(D_80079534)($a0)
/* 49600 80058E00 CB0F010C */  jal        CloseEvent
/* 49604 80058E04 00000000 */   nop
/* 49608 80058E08 0880043C */  lui        $a0, %hi(D_80079538)
/* 4960C 80058E0C 3895848C */  lw         $a0, %lo(D_80079538)($a0)
/* 49610 80058E10 CB0F010C */  jal        CloseEvent
/* 49614 80058E14 00000000 */   nop
/* 49618 80058E18 0880043C */  lui        $a0, %hi(D_8007953C)
/* 4961C 80058E1C 3C95848C */  lw         $a0, %lo(D_8007953C)($a0)
/* 49620 80058E20 CB0F010C */  jal        CloseEvent
/* 49624 80058E24 00000000 */   nop
/* 49628 80058E28 0880043C */  lui        $a0, %hi(D_80079540)
/* 4962C 80058E2C 4095848C */  lw         $a0, %lo(D_80079540)($a0)
/* 49630 80058E30 CB0F010C */  jal        CloseEvent
/* 49634 80058E34 00000000 */   nop
/* 49638 80058E38 0880043C */  lui        $a0, %hi(D_80079544)
/* 4963C 80058E3C 4495848C */  lw         $a0, %lo(D_80079544)($a0)
/* 49640 80058E40 CB0F010C */  jal        CloseEvent
/* 49644 80058E44 00000000 */   nop
/* 49648 80058E48 01000224 */  addiu      $v0, $zero, 0x1
/* 4964C 80058E4C 03000216 */  bne        $s0, $v0, .L80058E5C
/* 49650 80058E50 00000000 */   nop
/* 49654 80058E54 9F61000C */  jal        ExitCriticalSection
/* 49658 80058E58 00000000 */   nop
.L80058E5C:
/* 4965C 80058E5C 1400BF8F */  lw         $ra, 0x14($sp)
/* 49660 80058E60 1000B08F */  lw         $s0, 0x10($sp)
/* 49664 80058E64 0800E003 */  jr         $ra
/* 49668 80058E68 1800BD27 */   addiu     $sp, $sp, 0x18
.size _card_stop, . - _card_stop

glabel _clr_card_event
/* 4966C 80058E6C 0880043C */  lui        $a0, %hi(D_80079528)
/* 49670 80058E70 2895848C */  lw         $a0, %lo(D_80079528)($a0)
/* 49674 80058E74 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 49678 80058E78 1000BFAF */  sw         $ra, 0x10($sp)
/* 4967C 80058E7C BB38010C */  jal        TestEvent
/* 49680 80058E80 00000000 */   nop
/* 49684 80058E84 0880043C */  lui        $a0, %hi(D_8007952C)
/* 49688 80058E88 2C95848C */  lw         $a0, %lo(D_8007952C)($a0)
/* 4968C 80058E8C BB38010C */  jal        TestEvent
/* 49690 80058E90 00000000 */   nop
/* 49694 80058E94 0880043C */  lui        $a0, %hi(D_80079530)
/* 49698 80058E98 3095848C */  lw         $a0, %lo(D_80079530)($a0)
/* 4969C 80058E9C BB38010C */  jal        TestEvent
/* 496A0 80058EA0 00000000 */   nop
/* 496A4 80058EA4 0880043C */  lui        $a0, %hi(D_80079534)
/* 496A8 80058EA8 3495848C */  lw         $a0, %lo(D_80079534)($a0)
/* 496AC 80058EAC BB38010C */  jal        TestEvent
/* 496B0 80058EB0 00000000 */   nop
/* 496B4 80058EB4 0880043C */  lui        $a0, %hi(D_80079538)
/* 496B8 80058EB8 3895848C */  lw         $a0, %lo(D_80079538)($a0)
/* 496BC 80058EBC BB38010C */  jal        TestEvent
/* 496C0 80058EC0 00000000 */   nop
/* 496C4 80058EC4 0880043C */  lui        $a0, %hi(D_8007953C)
/* 496C8 80058EC8 3C95848C */  lw         $a0, %lo(D_8007953C)($a0)
/* 496CC 80058ECC BB38010C */  jal        TestEvent
/* 496D0 80058ED0 00000000 */   nop
/* 496D4 80058ED4 0880043C */  lui        $a0, %hi(D_80079540)
/* 496D8 80058ED8 4095848C */  lw         $a0, %lo(D_80079540)($a0)
/* 496DC 80058EDC BB38010C */  jal        TestEvent
/* 496E0 80058EE0 00000000 */   nop
/* 496E4 80058EE4 0880043C */  lui        $a0, %hi(D_80079544)
/* 496E8 80058EE8 4495848C */  lw         $a0, %lo(D_80079544)($a0)
/* 496EC 80058EEC BB38010C */  jal        TestEvent
/* 496F0 80058EF0 00000000 */   nop
/* 496F4 80058EF4 0880013C */  lui        $at, %hi(D_80079554)
/* 496F8 80058EF8 549520AC */  sw         $zero, %lo(D_80079554)($at)
/* 496FC 80058EFC 0880023C */  lui        $v0, %hi(D_80079554)
/* 49700 80058F00 5495428C */  lw         $v0, %lo(D_80079554)($v0)
/* 49704 80058F04 0880013C */  lui        $at, %hi(D_80079550)
/* 49708 80058F08 509522AC */  sw         $v0, %lo(D_80079550)($at)
/* 4970C 80058F0C 0880023C */  lui        $v0, %hi(D_80079550)
/* 49710 80058F10 5095428C */  lw         $v0, %lo(D_80079550)($v0)
/* 49714 80058F14 0880013C */  lui        $at, %hi(D_8007954C)
/* 49718 80058F18 4C9522AC */  sw         $v0, %lo(D_8007954C)($at)
/* 4971C 80058F1C 0880023C */  lui        $v0, %hi(D_8007954C)
/* 49720 80058F20 4C95428C */  lw         $v0, %lo(D_8007954C)($v0)
/* 49724 80058F24 0880013C */  lui        $at, %hi(D_80079548)
/* 49728 80058F28 489522AC */  sw         $v0, %lo(D_80079548)($at)
/* 4972C 80058F2C 0880013C */  lui        $at, %hi(D_80079564)
/* 49730 80058F30 649520AC */  sw         $zero, %lo(D_80079564)($at)
/* 49734 80058F34 0880023C */  lui        $v0, %hi(D_80079564)
/* 49738 80058F38 6495428C */  lw         $v0, %lo(D_80079564)($v0)
/* 4973C 80058F3C 0880013C */  lui        $at, %hi(D_80079560)
/* 49740 80058F40 609522AC */  sw         $v0, %lo(D_80079560)($at)
/* 49744 80058F44 0880023C */  lui        $v0, %hi(D_80079560)
/* 49748 80058F48 6095428C */  lw         $v0, %lo(D_80079560)($v0)
/* 4974C 80058F4C 0880013C */  lui        $at, %hi(D_8007955C)
/* 49750 80058F50 5C9522AC */  sw         $v0, %lo(D_8007955C)($at)
/* 49754 80058F54 0880023C */  lui        $v0, %hi(D_8007955C)
/* 49758 80058F58 5C95428C */  lw         $v0, %lo(D_8007955C)($v0)
/* 4975C 80058F5C 0880013C */  lui        $at, %hi(D_80079558)
/* 49760 80058F60 589522AC */  sw         $v0, %lo(D_80079558)($at)
/* 49764 80058F64 1000BF8F */  lw         $ra, 0x10($sp)
/* 49768 80058F68 1800BD27 */  addiu      $sp, $sp, 0x18
/* 4976C 80058F6C 0800E003 */  jr         $ra
/* 49770 80058F70 00000000 */   nop
.size _clr_card_event, . - _clr_card_event

glabel _get_card_event
/* 49774 80058F74 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 49778 80058F78 1400BFAF */  sw         $ra, 0x14($sp)
/* 4977C 80058F7C 1000B0AF */  sw         $s0, 0x10($sp)
.L80058F80:
/* 49780 80058F80 0880023C */  lui        $v0, %hi(D_8007954C)
/* 49784 80058F84 4C95428C */  lw         $v0, %lo(D_8007954C)($v0)
/* 49788 80058F88 0880043C */  lui        $a0, %hi(D_80079548)
/* 4978C 80058F8C 4895848C */  lw         $a0, %lo(D_80079548)($a0)
/* 49790 80058F90 0880033C */  lui        $v1, %hi(D_80079550)
/* 49794 80058F94 5095638C */  lw         $v1, %lo(D_80079550)($v1)
/* 49798 80058F98 40100200 */  sll        $v0, $v0, 1
/* 4979C 80058F9C 21208200 */  addu       $a0, $a0, $v0
/* 497A0 80058FA0 80180300 */  sll        $v1, $v1, 2
/* 497A4 80058FA4 0880023C */  lui        $v0, %hi(D_80079554)
/* 497A8 80058FA8 5495428C */  lw         $v0, %lo(D_80079554)($v0)
/* 497AC 80058FAC 21208300 */  addu       $a0, $a0, $v1
/* 497B0 80058FB0 C0100200 */  sll        $v0, $v0, 3
/* 497B4 80058FB4 21808200 */  addu       $s0, $a0, $v0
/* 497B8 80058FB8 F1FF0012 */  beqz       $s0, .L80058F80
/* 497BC 80058FBC 00000000 */   nop
/* 497C0 80058FC0 0880043C */  lui        $a0, %hi(D_80079538)
/* 497C4 80058FC4 3895848C */  lw         $a0, %lo(D_80079538)($a0)
/* 497C8 80058FC8 BB38010C */  jal        TestEvent
/* 497CC 80058FCC 00000000 */   nop
/* 497D0 80058FD0 0880043C */  lui        $a0, %hi(D_8007953C)
/* 497D4 80058FD4 3C95848C */  lw         $a0, %lo(D_8007953C)($a0)
/* 497D8 80058FD8 BB38010C */  jal        TestEvent
/* 497DC 80058FDC 00000000 */   nop
/* 497E0 80058FE0 0880043C */  lui        $a0, %hi(D_80079540)
/* 497E4 80058FE4 4095848C */  lw         $a0, %lo(D_80079540)($a0)
/* 497E8 80058FE8 BB38010C */  jal        TestEvent
/* 497EC 80058FEC 00000000 */   nop
/* 497F0 80058FF0 0880043C */  lui        $a0, %hi(D_80079544)
/* 497F4 80058FF4 4495848C */  lw         $a0, %lo(D_80079544)($a0)
/* 497F8 80058FF8 BB38010C */  jal        TestEvent
/* 497FC 80058FFC 00000000 */   nop
/* 49800 80059000 0880013C */  lui        $at, %hi(D_80079554)
/* 49804 80059004 549520AC */  sw         $zero, %lo(D_80079554)($at)
/* 49808 80059008 0880023C */  lui        $v0, %hi(D_80079554)
/* 4980C 8005900C 5495428C */  lw         $v0, %lo(D_80079554)($v0)
/* 49810 80059010 0880013C */  lui        $at, %hi(D_80079550)
/* 49814 80059014 509522AC */  sw         $v0, %lo(D_80079550)($at)
/* 49818 80059018 0880023C */  lui        $v0, %hi(D_80079550)
/* 4981C 8005901C 5095428C */  lw         $v0, %lo(D_80079550)($v0)
/* 49820 80059020 0880013C */  lui        $at, %hi(D_8007954C)
/* 49824 80059024 4C9522AC */  sw         $v0, %lo(D_8007954C)($at)
/* 49828 80059028 0880033C */  lui        $v1, %hi(D_8007954C)
/* 4982C 8005902C 4C95638C */  lw         $v1, %lo(D_8007954C)($v1)
/* 49830 80059030 43101000 */  sra        $v0, $s0, 1
/* 49834 80059034 0880013C */  lui        $at, %hi(D_80079548)
/* 49838 80059038 489523AC */  sw         $v1, %lo(D_80079548)($at)
/* 4983C 8005903C 1400BF8F */  lw         $ra, 0x14($sp)
/* 49840 80059040 1000B08F */  lw         $s0, 0x10($sp)
/* 49844 80059044 0800E003 */  jr         $ra
/* 49848 80059048 1800BD27 */   addiu     $sp, $sp, 0x18
.size _get_card_event, . - _get_card_event

glabel _get_card_event_x
/* 4984C 8005904C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 49850 80059050 1400BFAF */  sw         $ra, 0x14($sp)
/* 49854 80059054 1000B0AF */  sw         $s0, 0x10($sp)
.L80059058:
/* 49858 80059058 0880023C */  lui        $v0, %hi(D_8007955C)
/* 4985C 8005905C 5C95428C */  lw         $v0, %lo(D_8007955C)($v0)
/* 49860 80059060 0880043C */  lui        $a0, %hi(D_80079558)
/* 49864 80059064 5895848C */  lw         $a0, %lo(D_80079558)($a0)
/* 49868 80059068 0880033C */  lui        $v1, %hi(D_80079560)
/* 4986C 8005906C 6095638C */  lw         $v1, %lo(D_80079560)($v1)
/* 49870 80059070 40100200 */  sll        $v0, $v0, 1
/* 49874 80059074 21208200 */  addu       $a0, $a0, $v0
/* 49878 80059078 80180300 */  sll        $v1, $v1, 2
/* 4987C 8005907C 0880023C */  lui        $v0, %hi(D_80079564)
/* 49880 80059080 6495428C */  lw         $v0, %lo(D_80079564)($v0)
/* 49884 80059084 21208300 */  addu       $a0, $a0, $v1
/* 49888 80059088 C0100200 */  sll        $v0, $v0, 3
/* 4988C 8005908C 21808200 */  addu       $s0, $a0, $v0
/* 49890 80059090 F1FF0012 */  beqz       $s0, .L80059058
/* 49894 80059094 00000000 */   nop
/* 49898 80059098 0880043C */  lui        $a0, %hi(D_80079528)
/* 4989C 8005909C 2895848C */  lw         $a0, %lo(D_80079528)($a0)
/* 498A0 800590A0 BB38010C */  jal        TestEvent
/* 498A4 800590A4 00000000 */   nop
/* 498A8 800590A8 0880043C */  lui        $a0, %hi(D_8007952C)
/* 498AC 800590AC 2C95848C */  lw         $a0, %lo(D_8007952C)($a0)
/* 498B0 800590B0 BB38010C */  jal        TestEvent
/* 498B4 800590B4 00000000 */   nop
/* 498B8 800590B8 0880043C */  lui        $a0, %hi(D_80079530)
/* 498BC 800590BC 3095848C */  lw         $a0, %lo(D_80079530)($a0)
/* 498C0 800590C0 BB38010C */  jal        TestEvent
/* 498C4 800590C4 00000000 */   nop
/* 498C8 800590C8 0880043C */  lui        $a0, %hi(D_80079534)
/* 498CC 800590CC 3495848C */  lw         $a0, %lo(D_80079534)($a0)
/* 498D0 800590D0 BB38010C */  jal        TestEvent
/* 498D4 800590D4 00000000 */   nop
/* 498D8 800590D8 0880013C */  lui        $at, %hi(D_80079564)
/* 498DC 800590DC 649520AC */  sw         $zero, %lo(D_80079564)($at)
/* 498E0 800590E0 0880023C */  lui        $v0, %hi(D_80079564)
/* 498E4 800590E4 6495428C */  lw         $v0, %lo(D_80079564)($v0)
/* 498E8 800590E8 0880013C */  lui        $at, %hi(D_80079560)
/* 498EC 800590EC 609522AC */  sw         $v0, %lo(D_80079560)($at)
/* 498F0 800590F0 0880023C */  lui        $v0, %hi(D_80079560)
/* 498F4 800590F4 6095428C */  lw         $v0, %lo(D_80079560)($v0)
/* 498F8 800590F8 0880013C */  lui        $at, %hi(D_8007955C)
/* 498FC 800590FC 5C9522AC */  sw         $v0, %lo(D_8007955C)($at)
/* 49900 80059100 0880033C */  lui        $v1, %hi(D_8007955C)
/* 49904 80059104 5C95638C */  lw         $v1, %lo(D_8007955C)($v1)
/* 49908 80059108 43101000 */  sra        $v0, $s0, 1
/* 4990C 8005910C 0880013C */  lui        $at, %hi(D_80079558)
/* 49910 80059110 589523AC */  sw         $v1, %lo(D_80079558)($at)
/* 49914 80059114 1400BF8F */  lw         $ra, 0x14($sp)
/* 49918 80059118 1000B08F */  lw         $s0, 0x10($sp)
/* 4991C 8005911C 0800E003 */  jr         $ra
/* 49920 80059120 1800BD27 */   addiu     $sp, $sp, 0x18
.size _get_card_event_x, . - _get_card_event_x

glabel _chk_card_event
/* 49924 80059124 0880023C */  lui        $v0, %hi(D_8007954C)
/* 49928 80059128 4C95428C */  lw         $v0, %lo(D_8007954C)($v0)
/* 4992C 8005912C 0880043C */  lui        $a0, %hi(D_80079548)
/* 49930 80059130 4895848C */  lw         $a0, %lo(D_80079548)($a0)
/* 49934 80059134 0880033C */  lui        $v1, %hi(D_80079550)
/* 49938 80059138 5095638C */  lw         $v1, %lo(D_80079550)($v1)
/* 4993C 8005913C 40100200 */  sll        $v0, $v0, 1
/* 49940 80059140 21208200 */  addu       $a0, $a0, $v0
/* 49944 80059144 80180300 */  sll        $v1, $v1, 2
/* 49948 80059148 0880023C */  lui        $v0, %hi(D_80079554)
/* 4994C 8005914C 5495428C */  lw         $v0, %lo(D_80079554)($v0)
/* 49950 80059150 21208300 */  addu       $a0, $a0, $v1
/* 49954 80059154 C0100200 */  sll        $v0, $v0, 3
/* 49958 80059158 0800E003 */  jr         $ra
/* 4995C 8005915C 21108200 */   addu      $v0, $a0, $v0
.size _chk_card_event, . - _chk_card_event

glabel _chk_card_event_x
/* 49960 80059160 0880023C */  lui        $v0, %hi(D_8007955C)
/* 49964 80059164 5C95428C */  lw         $v0, %lo(D_8007955C)($v0)
/* 49968 80059168 0880043C */  lui        $a0, %hi(D_80079558)
/* 4996C 8005916C 5895848C */  lw         $a0, %lo(D_80079558)($a0)
/* 49970 80059170 0880033C */  lui        $v1, %hi(D_80079560)
/* 49974 80059174 6095638C */  lw         $v1, %lo(D_80079560)($v1)
/* 49978 80059178 40100200 */  sll        $v0, $v0, 1
/* 4997C 8005917C 21208200 */  addu       $a0, $a0, $v0
/* 49980 80059180 80180300 */  sll        $v1, $v1, 2
/* 49984 80059184 0880023C */  lui        $v0, %hi(D_80079564)
/* 49988 80059188 6495428C */  lw         $v0, %lo(D_80079564)($v0)
/* 4998C 8005918C 21208300 */  addu       $a0, $a0, $v1
/* 49990 80059190 C0100200 */  sll        $v0, $v0, 3
/* 49994 80059194 0800E003 */  jr         $ra
/* 49998 80059198 21108200 */   addu      $v0, $a0, $v0
.size _chk_card_event_x, . - _chk_card_event_x
