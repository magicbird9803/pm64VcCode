.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

glabel guMtxIdentF
/* 40E60 80065A60 3C083F80 */  lui       $t0, (0x3F800000 >> 16)
/* 40E64 80065A64 AC880000 */  sw        $t0, 0x0($a0)
/* 40E68 80065A68 AC800004 */  sw        $zero, 0x4($a0)
/* 40E6C 80065A6C AC800008 */  sw        $zero, 0x8($a0)
/* 40E70 80065A70 AC80000C */  sw        $zero, 0xC($a0)
/* 40E74 80065A74 AC800010 */  sw        $zero, 0x10($a0)
/* 40E78 80065A78 AC880014 */  sw        $t0, 0x14($a0)
/* 40E7C 80065A7C AC800018 */  sw        $zero, 0x18($a0)
/* 40E80 80065A80 AC80001C */  sw        $zero, 0x1C($a0)
/* 40E84 80065A84 AC800020 */  sw        $zero, 0x20($a0)
/* 40E88 80065A88 AC800024 */  sw        $zero, 0x24($a0)
/* 40E8C 80065A8C AC880028 */  sw        $t0, 0x28($a0)
/* 40E90 80065A90 AC80002C */  sw        $zero, 0x2C($a0)
/* 40E94 80065A94 AC800030 */  sw        $zero, 0x30($a0)
/* 40E98 80065A98 AC800034 */  sw        $zero, 0x34($a0)
/* 40E9C 80065A9C AC800038 */  sw        $zero, 0x38($a0)
/* 40EA0 80065AA0 03E00008 */  jr        $ra
/* 40EA4 80065AA4 AC88003C */   sw       $t0, 0x3C($a0)
/* 40EA8 80065AA8 00000000 */  nop
/* 40EAC 80065AAC 00000000 */  nop
/* 40EB0 80065AB0 00000000 */  nop
/* 40EB4 80065AB4 00000000 */  nop
/* 40EB8 80065AB8 00000000 */  nop
/* 40EBC 80065ABC 00000000 */  nop
