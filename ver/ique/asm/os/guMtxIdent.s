.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

# Handwritten function
glabel guMtxIdent
/* 40E00 80065A00 20080001 */  addi      $t0, $zero, 0x1 # handwritten instruction
/* 40E04 80065A04 00084C00 */  sll       $t1, $t0, 16
/* 40E08 80065A08 AC890000 */  sw        $t1, 0x0($a0)
/* 40E0C 80065A0C AC800004 */  sw        $zero, 0x4($a0)
/* 40E10 80065A10 AC880008 */  sw        $t0, 0x8($a0)
/* 40E14 80065A14 AC80000C */  sw        $zero, 0xC($a0)
/* 40E18 80065A18 AC800010 */  sw        $zero, 0x10($a0)
/* 40E1C 80065A1C AC890014 */  sw        $t1, 0x14($a0)
/* 40E20 80065A20 AC800018 */  sw        $zero, 0x18($a0)
/* 40E24 80065A24 AC88001C */  sw        $t0, 0x1C($a0)
/* 40E28 80065A28 AC800020 */  sw        $zero, 0x20($a0)
/* 40E2C 80065A2C AC800024 */  sw        $zero, 0x24($a0)
/* 40E30 80065A30 AC800028 */  sw        $zero, 0x28($a0)
/* 40E34 80065A34 AC80002C */  sw        $zero, 0x2C($a0)
/* 40E38 80065A38 AC800030 */  sw        $zero, 0x30($a0)
/* 40E3C 80065A3C AC800034 */  sw        $zero, 0x34($a0)
/* 40E40 80065A40 AC800038 */  sw        $zero, 0x38($a0)
/* 40E44 80065A44 03E00008 */  jr        $ra
/* 40E48 80065A48 AC80003C */   sw       $zero, 0x3C($a0)
/* 40E4C 80065A4C 00000000 */  nop
/* 40E50 80065A50 00000000 */  nop
/* 40E54 80065A54 00000000 */  nop
/* 40E58 80065A58 00000000 */  nop
/* 40E5C 80065A5C 00000000 */  nop
