.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

# Handwritten function
glabel osMapTLB
/* 40160 80064D60 40085000 */  mfc0      $t0, $10 # handwritten instruction
/* 40164 80064D64 40840000 */  mtc0      $a0, $0 # handwritten instruction
/* 40168 80064D68 40852800 */  mtc0      $a1, $5 # handwritten instruction
/* 4016C 80064D6C 8FA90014 */  lw        $t1, 0x14($sp)
/* 40170 80064D70 2401FFFF */  addiu     $at, $zero, -0x1
/* 40174 80064D74 11210004 */  beq       $t1, $at, .LIQUE_80064D88
/* 40178 80064D78 240C0001 */   addiu    $t4, $zero, 0x1
/* 4017C 80064D7C 240A001E */  addiu     $t2, $zero, 0x1E
/* 40180 80064D80 10000002 */  b         .LIQUE_80064D8C
/* 40184 80064D84 00C93025 */   or       $a2, $a2, $t1
.LIQUE_80064D88:
/* 40188 80064D88 240A001F */  addiu     $t2, $zero, 0x1F
.LIQUE_80064D8C:
/* 4018C 80064D8C 40865000 */  mtc0      $a2, $10 # handwritten instruction
/* 40190 80064D90 2401FFFF */  addiu     $at, $zero, -0x1
/* 40194 80064D94 10E10006 */  beq       $a3, $at, .LIQUE_80064DB0
/* 40198 80064D98 00000000 */   nop
/* 4019C 80064D9C 00075982 */  srl       $t3, $a3, 6
/* 401A0 80064DA0 016A5825 */  or        $t3, $t3, $t2
/* 401A4 80064DA4 408B1000 */  mtc0      $t3, $2 # handwritten instruction
/* 401A8 80064DA8 10000002 */  b         .LIQUE_80064DB4
/* 401AC 80064DAC 00000000 */   nop
.LIQUE_80064DB0:
/* 401B0 80064DB0 408C1000 */  mtc0      $t4, $2 # handwritten instruction
.LIQUE_80064DB4:
/* 401B4 80064DB4 8FAB0010 */  lw        $t3, 0x10($sp)
/* 401B8 80064DB8 2401FFFF */  addiu     $at, $zero, -0x1
/* 401BC 80064DBC 11610006 */  beq       $t3, $at, .LIQUE_80064DD8
/* 401C0 80064DC0 00000000 */   nop
/* 401C4 80064DC4 000B5982 */  srl       $t3, $t3, 6
/* 401C8 80064DC8 016A5825 */  or        $t3, $t3, $t2
/* 401CC 80064DCC 408B1800 */  mtc0      $t3, $3 # handwritten instruction
/* 401D0 80064DD0 10000007 */  b         .LIQUE_80064DF0
/* 401D4 80064DD4 00000000 */   nop
.LIQUE_80064DD8:
/* 401D8 80064DD8 408C1800 */  mtc0      $t4, $3 # handwritten instruction
/* 401DC 80064DDC 2401FFFF */  addiu     $at, $zero, -0x1
/* 401E0 80064DE0 14E10003 */  bne       $a3, $at, .LIQUE_80064DF0
/* 401E4 80064DE4 00000000 */   nop
/* 401E8 80064DE8 3C0B8000 */  lui       $t3, (0x80000000 >> 16)
/* 401EC 80064DEC 408B5000 */  mtc0      $t3, $10 # handwritten instruction
.LIQUE_80064DF0:
/* 401F0 80064DF0 00000000 */  nop
/* 401F4 80064DF4 42000002 */  tlbwi # handwritten instruction
/* 401F8 80064DF8 00000000 */  nop
/* 401FC 80064DFC 00000000 */  nop
/* 40200 80064E00 00000000 */  nop
/* 40204 80064E04 00000000 */  nop
/* 40208 80064E08 40885000 */  mtc0      $t0, $10 # handwritten instruction
/* 4020C 80064E0C 03E00008 */  jr        $ra
/* 40210 80064E10 00000000 */   nop
/* 40214 80064E14 00000000 */  nop
/* 40218 80064E18 00000000 */  nop
/* 4021C 80064E1C 00000000 */  nop
