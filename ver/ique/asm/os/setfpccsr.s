.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

glabel __osSetFpcCsr
/* 46A50 8006B650 4442F800 */  cfc1      $v0, $31
/* 46A54 8006B654 44C4F800 */  ctc1      $a0, $31
/* 46A58 8006B658 03E00008 */  jr        $ra
/* 46A5C 8006B65C 00000000 */   nop
