.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

# Handwritten function
glabel __osSetCompare
/* 47A60 8006C660 40845800 */  mtc0      $a0, $11 # handwritten instruction
/* 47A64 8006C664 03E00008 */  jr        $ra
/* 47A68 8006C668 00000000 */   nop
/* 47A6C 8006C66C 00000000 */  nop
