.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

# Handwritten function
glabel __osGetSR
/* 46A40 8006B640 40026000 */  mfc0      $v0, $12 # handwritten instruction
/* 46A44 8006B644 03E00008 */  jr        $ra
/* 46A48 8006B648 00000000 */   nop
/* 46A4C 8006B64C 00000000 */  nop
