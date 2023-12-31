.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osMapTLB
/* 41BA0 800667A0 40085000 */  mfc0      $t0, $10
/* 41BA4 800667A4 40840000 */  mtc0      $a0, $0
/* 41BA8 800667A8 40852800 */  mtc0      $a1, $5
/* 41BAC 800667AC 8FA90014 */  lw        $t1, 0x14($sp)
/* 41BB0 800667B0 2401FFFF */  addiu     $at, $zero, -1
/* 41BB4 800667B4 11210004 */  beq       $t1, $at, .L800667C8
/* 41BB8 800667B8 240C0001 */   addiu    $t4, $zero, 1
/* 41BBC 800667BC 240A001E */  addiu     $t2, $zero, 0x1e
/* 41BC0 800667C0 10000002 */  b         .L800667CC
/* 41BC4 800667C4 00C93025 */   or       $a2, $a2, $t1
.L800667C8:
/* 41BC8 800667C8 240A001F */  addiu     $t2, $zero, 0x1f
.L800667CC:
/* 41BCC 800667CC 40865000 */  mtc0      $a2, $10
/* 41BD0 800667D0 2401FFFF */  addiu     $at, $zero, -1
/* 41BD4 800667D4 10E10006 */  beq       $a3, $at, .L800667F0
/* 41BD8 800667D8 00000000 */   nop
/* 41BDC 800667DC 00075982 */  srl       $t3, $a3, 6
/* 41BE0 800667E0 016A5825 */  or        $t3, $t3, $t2
/* 41BE4 800667E4 408B1000 */  mtc0      $t3, $2
/* 41BE8 800667E8 10000002 */  b         .L800667F4
/* 41BEC 800667EC 00000000 */   nop
.L800667F0:
/* 41BF0 800667F0 408C1000 */  mtc0      $t4, $2
.L800667F4:
/* 41BF4 800667F4 8FAB0010 */  lw        $t3, 0x10($sp)
/* 41BF8 800667F8 2401FFFF */  addiu     $at, $zero, -1
/* 41BFC 800667FC 11610006 */  beq       $t3, $at, .L80066818
/* 41C00 80066800 00000000 */   nop
/* 41C04 80066804 000B5982 */  srl       $t3, $t3, 6
/* 41C08 80066808 016A5825 */  or        $t3, $t3, $t2
/* 41C0C 8006680C 408B1800 */  mtc0      $t3, $3
/* 41C10 80066810 10000007 */  b         .L80066830
/* 41C14 80066814 00000000 */   nop
.L80066818:
/* 41C18 80066818 408C1800 */  mtc0      $t4, $3
/* 41C1C 8006681C 2401FFFF */  addiu     $at, $zero, -1
/* 41C20 80066820 14E10003 */  bne       $a3, $at, .L80066830
/* 41C24 80066824 00000000 */   nop
/* 41C28 80066828 3C0B8000 */  lui       $t3, 0x8000
/* 41C2C 8006682C 408B5000 */  mtc0      $t3, $10
.L80066830:
/* 41C30 80066830 00000000 */  nop
/* 41C34 80066834 42000002 */  tlbwi
/* 41C38 80066838 00000000 */  nop
/* 41C3C 8006683C 00000000 */  nop
/* 41C40 80066840 00000000 */  nop
/* 41C44 80066844 00000000 */  nop
/* 41C48 80066848 40885000 */  mtc0      $t0, $10
/* 41C4C 8006684C 03E00008 */  jr        $ra
/* 41C50 80066850 00000000 */   nop
/* 41C54 80066854 00000000 */  nop
/* 41C58 80066858 00000000 */  nop
/* 41C5C 8006685C 00000000 */  nop
