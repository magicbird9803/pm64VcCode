.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Generated by spimdisasm 1.11.1 */

glabel filemenu_get_menu_message
/* 177278 8024E858 3C028015 */  lui        $v0, %hi(gCurrentLanguage)
/* 17727C 8024E85C 8C42AE4C */  lw         $v0, %lo(gCurrentLanguage)($v0)
/* 177280 8024E860 00021080 */  sll        $v0, $v0, 2
/* 177284 8024E864 3C018025 */  lui        $at, %hi(gFileMenuMessages_intl)
/* 177288 8024E868 00220821 */  addu       $at, $at, $v0
/* 17728C 8024E86C 8C2211F8 */  lw         $v0, %lo(gFileMenuMessages_intl)($at)
/* 177290 8024E870 00042080 */  sll        $a0, $a0, 2
/* 177294 8024E874 00822021 */  addu       $a0, $a0, $v0
/* 177298 8024E878 03E00008 */  jr         $ra
/* 17729C 8024E87C 8C820000 */   lw        $v0, 0x0($a0)
