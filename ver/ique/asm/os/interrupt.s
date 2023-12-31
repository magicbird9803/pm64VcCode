.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

# Handwritten function
glabel __osDisableInt
/* 42100 80066D00 3C0A8009 */  lui       $t2, %hi(__OSGlobalIntMask)
/* 42104 80066D04 254A45B4 */  addiu     $t2, $t2, %lo(__OSGlobalIntMask)
/* 42108 80066D08 8D4B0000 */  lw        $t3, 0x0($t2)
/* 4210C 80066D0C 316BFF00 */  andi      $t3, $t3, 0xFF00
/* 42110 80066D10 40086000 */  mfc0      $t0, $12 # handwritten instruction
/* 42114 80066D14 2401FFFE */  addiu     $at, $zero, -0x2
/* 42118 80066D18 01014824 */  and       $t1, $t0, $at
/* 4211C 80066D1C 40896000 */  mtc0      $t1, $12 # handwritten instruction
/* 42120 80066D20 31020001 */  andi      $v0, $t0, 0x1
/* 42124 80066D24 8D480000 */  lw        $t0, 0x0($t2)
/* 42128 80066D28 3108FF00 */  andi      $t0, $t0, 0xFF00
/* 4212C 80066D2C 110B000E */  beq       $t0, $t3, .LIQUE_80066D68
/* 42130 80066D30 3C0A8009 */   lui      $t2, %hi(__osRunningThread)
/* 42134 80066D34 254A3280 */  addiu     $t2, $t2, %lo(__osRunningThread)
/* 42138 80066D38 8D490118 */  lw        $t1, 0x118($t2)
/* 4213C 80066D3C 312AFF00 */  andi      $t2, $t1, 0xFF00
/* 42140 80066D40 01485024 */  and       $t2, $t2, $t0
/* 42144 80066D44 3C01FFFF */  lui       $at, (0xFFFF00FF >> 16)
/* 42148 80066D48 342100FF */  ori       $at, $at, (0xFFFF00FF & 0xFFFF)
/* 4214C 80066D4C 01214824 */  and       $t1, $t1, $at
/* 42150 80066D50 012A4825 */  or        $t1, $t1, $t2
/* 42154 80066D54 2401FFFE */  addiu     $at, $zero, -0x2
/* 42158 80066D58 01214824 */  and       $t1, $t1, $at
/* 4215C 80066D5C 40896000 */  mtc0      $t1, $12 # handwritten instruction
/* 42160 80066D60 00000000 */  nop
/* 42164 80066D64 00000000 */  nop
.LIQUE_80066D68:
/* 42168 80066D68 03E00008 */  jr        $ra
/* 4216C 80066D6C 00000000 */   nop

# Handwritten function
glabel __osRestoreInt
/* 42170 80066D70 40086000 */  mfc0      $t0, $12 # handwritten instruction
/* 42174 80066D74 01044025 */  or        $t0, $t0, $a0
/* 42178 80066D78 40886000 */  mtc0      $t0, $12 # handwritten instruction
/* 4217C 80066D7C 00000000 */  nop
/* 42180 80066D80 00000000 */  nop
/* 42184 80066D84 03E00008 */  jr        $ra
/* 42188 80066D88 00000000 */   nop
/* 4218C 80066D8C 00000000 */  nop
