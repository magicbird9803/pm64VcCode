.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

# Handwritten function
glabel bcopy
/* 3DC10 80062810 10C0001B */  beqz      $a2, .LIQUE_80062880
/* 3DC14 80062814 00A03821 */   addu     $a3, $a1, $zero
/* 3DC18 80062818 10850019 */  beq       $a0, $a1, .LIQUE_80062880
/* 3DC1C 8006281C 00000000 */   nop
/* 3DC20 80062820 00A4082A */  slt       $at, $a1, $a0
/* 3DC24 80062824 14200007 */  bnez      $at, .LIQUE_80062844
/* 3DC28 80062828 00000000 */   nop
/* 3DC2C 8006282C 00861020 */  add       $v0, $a0, $a2 # handwritten instruction
/* 3DC30 80062830 00A2082A */  slt       $at, $a1, $v0
/* 3DC34 80062834 10200003 */  beqz      $at, .LIQUE_80062844
/* 3DC38 80062838 00000000 */   nop
/* 3DC3C 8006283C 1000005C */  b         .LIQUE_800629B0
/* 3DC40 80062840 00000000 */   nop
.LIQUE_80062844:
/* 3DC44 80062844 28C10010 */  slti      $at, $a2, 0x10
/* 3DC48 80062848 14200005 */  bnez      $at, .LIQUE_80062860
/* 3DC4C 8006284C 00000000 */   nop
/* 3DC50 80062850 30820003 */  andi      $v0, $a0, 0x3
/* 3DC54 80062854 30A30003 */  andi      $v1, $a1, 0x3
/* 3DC58 80062858 1043000B */  beq       $v0, $v1, .LIQUE_80062888
/* 3DC5C 8006285C 00000000 */   nop
.LIQUE_80062860:
/* 3DC60 80062860 10C00007 */  beqz      $a2, .LIQUE_80062880
/* 3DC64 80062864 00000000 */   nop
/* 3DC68 80062868 00861821 */  addu      $v1, $a0, $a2
.LIQUE_8006286C:
/* 3DC6C 8006286C 80820000 */  lb        $v0, 0x0($a0)
/* 3DC70 80062870 24840001 */  addiu     $a0, $a0, 0x1
/* 3DC74 80062874 A0A20000 */  sb        $v0, 0x0($a1)
/* 3DC78 80062878 1483FFFC */  bne       $a0, $v1, .LIQUE_8006286C
/* 3DC7C 8006287C 24A50001 */   addiu    $a1, $a1, 0x1
.LIQUE_80062880:
/* 3DC80 80062880 03E00008 */  jr        $ra
/* 3DC84 80062884 00E01021 */   addu     $v0, $a3, $zero
.LIQUE_80062888:
/* 3DC88 80062888 1040001A */  beqz      $v0, .LIQUE_800628F4
/* 3DC8C 8006288C 00000000 */   nop
/* 3DC90 80062890 24010001 */  addiu     $at, $zero, 0x1
/* 3DC94 80062894 10410010 */  beq       $v0, $at, .LIQUE_800628D8
/* 3DC98 80062898 00000000 */   nop
/* 3DC9C 8006289C 24010002 */  addiu     $at, $zero, 0x2
/* 3DCA0 800628A0 10410007 */  beq       $v0, $at, .LIQUE_800628C0
/* 3DCA4 800628A4 00000000 */   nop
/* 3DCA8 800628A8 80820000 */  lb        $v0, 0x0($a0)
/* 3DCAC 800628AC 24840001 */  addiu     $a0, $a0, 0x1
/* 3DCB0 800628B0 A0A20000 */  sb        $v0, 0x0($a1)
/* 3DCB4 800628B4 24A50001 */  addiu     $a1, $a1, 0x1
/* 3DCB8 800628B8 1000000E */  b         .LIQUE_800628F4
/* 3DCBC 800628BC 24C6FFFF */   addiu    $a2, $a2, -0x1
.LIQUE_800628C0:
/* 3DCC0 800628C0 84820000 */  lh        $v0, 0x0($a0)
/* 3DCC4 800628C4 24840002 */  addiu     $a0, $a0, 0x2
/* 3DCC8 800628C8 A4A20000 */  sh        $v0, 0x0($a1)
/* 3DCCC 800628CC 24A50002 */  addiu     $a1, $a1, 0x2
/* 3DCD0 800628D0 10000008 */  b         .LIQUE_800628F4
/* 3DCD4 800628D4 24C6FFFE */   addiu    $a2, $a2, -0x2
.LIQUE_800628D8:
/* 3DCD8 800628D8 80820000 */  lb        $v0, 0x0($a0)
/* 3DCDC 800628DC 84830001 */  lh        $v1, 0x1($a0)
/* 3DCE0 800628E0 24840003 */  addiu     $a0, $a0, 0x3
/* 3DCE4 800628E4 A0A20000 */  sb        $v0, 0x0($a1)
/* 3DCE8 800628E8 A4A30001 */  sh        $v1, 0x1($a1)
/* 3DCEC 800628EC 24A50003 */  addiu     $a1, $a1, 0x3
/* 3DCF0 800628F0 24C6FFFD */  addiu     $a2, $a2, -0x3
.LIQUE_800628F4:
/* 3DCF4 800628F4 28C10020 */  slti      $at, $a2, 0x20
/* 3DCF8 800628F8 14200015 */  bnez      $at, .LIQUE_80062950
/* 3DCFC 800628FC 00000000 */   nop
/* 3DD00 80062900 8C820000 */  lw        $v0, 0x0($a0)
/* 3DD04 80062904 8C830004 */  lw        $v1, 0x4($a0)
/* 3DD08 80062908 8C880008 */  lw        $t0, 0x8($a0)
/* 3DD0C 8006290C 8C89000C */  lw        $t1, 0xC($a0)
/* 3DD10 80062910 8C8A0010 */  lw        $t2, 0x10($a0)
/* 3DD14 80062914 8C8B0014 */  lw        $t3, 0x14($a0)
/* 3DD18 80062918 8C8C0018 */  lw        $t4, 0x18($a0)
/* 3DD1C 8006291C 8C8D001C */  lw        $t5, 0x1C($a0)
/* 3DD20 80062920 24840020 */  addiu     $a0, $a0, 0x20
/* 3DD24 80062924 ACA20000 */  sw        $v0, 0x0($a1)
/* 3DD28 80062928 ACA30004 */  sw        $v1, 0x4($a1)
/* 3DD2C 8006292C ACA80008 */  sw        $t0, 0x8($a1)
/* 3DD30 80062930 ACA9000C */  sw        $t1, 0xC($a1)
/* 3DD34 80062934 ACAA0010 */  sw        $t2, 0x10($a1)
/* 3DD38 80062938 ACAB0014 */  sw        $t3, 0x14($a1)
/* 3DD3C 8006293C ACAC0018 */  sw        $t4, 0x18($a1)
/* 3DD40 80062940 ACAD001C */  sw        $t5, 0x1C($a1)
/* 3DD44 80062944 24A50020 */  addiu     $a1, $a1, 0x20
/* 3DD48 80062948 1000FFEA */  b         .LIQUE_800628F4
/* 3DD4C 8006294C 24C6FFE0 */   addiu    $a2, $a2, -0x20
.LIQUE_80062950:
/* 3DD50 80062950 28C10010 */  slti      $at, $a2, 0x10
/* 3DD54 80062954 1420000D */  bnez      $at, .LIQUE_8006298C
/* 3DD58 80062958 00000000 */   nop
/* 3DD5C 8006295C 8C820000 */  lw        $v0, 0x0($a0)
/* 3DD60 80062960 8C830004 */  lw        $v1, 0x4($a0)
/* 3DD64 80062964 8C880008 */  lw        $t0, 0x8($a0)
/* 3DD68 80062968 8C89000C */  lw        $t1, 0xC($a0)
/* 3DD6C 8006296C 24840010 */  addiu     $a0, $a0, 0x10
/* 3DD70 80062970 ACA20000 */  sw        $v0, 0x0($a1)
/* 3DD74 80062974 ACA30004 */  sw        $v1, 0x4($a1)
/* 3DD78 80062978 ACA80008 */  sw        $t0, 0x8($a1)
/* 3DD7C 8006297C ACA9000C */  sw        $t1, 0xC($a1)
/* 3DD80 80062980 24A50010 */  addiu     $a1, $a1, 0x10
/* 3DD84 80062984 1000FFF2 */  b         .LIQUE_80062950
/* 3DD88 80062988 24C6FFF0 */   addiu    $a2, $a2, -0x10
.LIQUE_8006298C:
/* 3DD8C 8006298C 28C10004 */  slti      $at, $a2, 0x4
/* 3DD90 80062990 1420FFB3 */  bnez      $at, .LIQUE_80062860
/* 3DD94 80062994 00000000 */   nop
/* 3DD98 80062998 8C820000 */  lw        $v0, 0x0($a0)
/* 3DD9C 8006299C 24840004 */  addiu     $a0, $a0, 0x4
/* 3DDA0 800629A0 ACA20000 */  sw        $v0, 0x0($a1)
/* 3DDA4 800629A4 24A50004 */  addiu     $a1, $a1, 0x4
/* 3DDA8 800629A8 1000FFF8 */  b         .LIQUE_8006298C
/* 3DDAC 800629AC 24C6FFFC */   addiu    $a2, $a2, -0x4
.LIQUE_800629B0:
/* 3DDB0 800629B0 00862020 */  add       $a0, $a0, $a2 # handwritten instruction
/* 3DDB4 800629B4 00A62820 */  add       $a1, $a1, $a2 # handwritten instruction
/* 3DDB8 800629B8 28C10010 */  slti      $at, $a2, 0x10
/* 3DDBC 800629BC 14200005 */  bnez      $at, .LIQUE_800629D4
/* 3DDC0 800629C0 00000000 */   nop
/* 3DDC4 800629C4 30820003 */  andi      $v0, $a0, 0x3
/* 3DDC8 800629C8 30A30003 */  andi      $v1, $a1, 0x3
/* 3DDCC 800629CC 1043000D */  beq       $v0, $v1, .LIQUE_80062A04
/* 3DDD0 800629D0 00000000 */   nop
.LIQUE_800629D4:
/* 3DDD4 800629D4 10C0FFAA */  beqz      $a2, .LIQUE_80062880
/* 3DDD8 800629D8 00000000 */   nop
/* 3DDDC 800629DC 2484FFFF */  addiu     $a0, $a0, -0x1
/* 3DDE0 800629E0 24A5FFFF */  addiu     $a1, $a1, -0x1
/* 3DDE4 800629E4 00861823 */  subu      $v1, $a0, $a2
.LIQUE_800629E8:
/* 3DDE8 800629E8 80820000 */  lb        $v0, 0x0($a0)
/* 3DDEC 800629EC 2484FFFF */  addiu     $a0, $a0, -0x1
/* 3DDF0 800629F0 A0A20000 */  sb        $v0, 0x0($a1)
/* 3DDF4 800629F4 1483FFFC */  bne       $a0, $v1, .LIQUE_800629E8
/* 3DDF8 800629F8 24A5FFFF */   addiu    $a1, $a1, -0x1
/* 3DDFC 800629FC 03E00008 */  jr        $ra
/* 3DE00 80062A00 00E01021 */   addu     $v0, $a3, $zero
.LIQUE_80062A04:
/* 3DE04 80062A04 1040001A */  beqz      $v0, .LIQUE_80062A70
/* 3DE08 80062A08 00000000 */   nop
/* 3DE0C 80062A0C 24010003 */  addiu     $at, $zero, 0x3
/* 3DE10 80062A10 10410010 */  beq       $v0, $at, .LIQUE_80062A54
/* 3DE14 80062A14 00000000 */   nop
/* 3DE18 80062A18 24010002 */  addiu     $at, $zero, 0x2
/* 3DE1C 80062A1C 10410007 */  beq       $v0, $at, .LIQUE_80062A3C
/* 3DE20 80062A20 00000000 */   nop
/* 3DE24 80062A24 8082FFFF */  lb        $v0, -0x1($a0)
/* 3DE28 80062A28 2484FFFF */  addiu     $a0, $a0, -0x1
/* 3DE2C 80062A2C A0A2FFFF */  sb        $v0, -0x1($a1)
/* 3DE30 80062A30 24A5FFFF */  addiu     $a1, $a1, -0x1
/* 3DE34 80062A34 1000000E */  b         .LIQUE_80062A70
/* 3DE38 80062A38 24C6FFFF */   addiu    $a2, $a2, -0x1
.LIQUE_80062A3C:
/* 3DE3C 80062A3C 8482FFFE */  lh        $v0, -0x2($a0)
/* 3DE40 80062A40 2484FFFE */  addiu     $a0, $a0, -0x2
/* 3DE44 80062A44 A4A2FFFE */  sh        $v0, -0x2($a1)
/* 3DE48 80062A48 24A5FFFE */  addiu     $a1, $a1, -0x2
/* 3DE4C 80062A4C 10000008 */  b         .LIQUE_80062A70
/* 3DE50 80062A50 24C6FFFE */   addiu    $a2, $a2, -0x2
.LIQUE_80062A54:
/* 3DE54 80062A54 8082FFFF */  lb        $v0, -0x1($a0)
/* 3DE58 80062A58 8483FFFD */  lh        $v1, -0x3($a0)
/* 3DE5C 80062A5C 2484FFFD */  addiu     $a0, $a0, -0x3
/* 3DE60 80062A60 A0A2FFFF */  sb        $v0, -0x1($a1)
/* 3DE64 80062A64 A4A3FFFD */  sh        $v1, -0x3($a1)
/* 3DE68 80062A68 24A5FFFD */  addiu     $a1, $a1, -0x3
/* 3DE6C 80062A6C 24C6FFFD */  addiu     $a2, $a2, -0x3
.LIQUE_80062A70:
/* 3DE70 80062A70 28C10020 */  slti      $at, $a2, 0x20
/* 3DE74 80062A74 14200015 */  bnez      $at, .LIQUE_80062ACC
/* 3DE78 80062A78 00000000 */   nop
/* 3DE7C 80062A7C 8C82FFFC */  lw        $v0, -0x4($a0)
/* 3DE80 80062A80 8C83FFF8 */  lw        $v1, -0x8($a0)
/* 3DE84 80062A84 8C88FFF4 */  lw        $t0, -0xC($a0)
/* 3DE88 80062A88 8C89FFF0 */  lw        $t1, -0x10($a0)
/* 3DE8C 80062A8C 8C8AFFEC */  lw        $t2, -0x14($a0)
/* 3DE90 80062A90 8C8BFFE8 */  lw        $t3, -0x18($a0)
/* 3DE94 80062A94 8C8CFFE4 */  lw        $t4, -0x1C($a0)
/* 3DE98 80062A98 8C8DFFE0 */  lw        $t5, -0x20($a0)
/* 3DE9C 80062A9C 2484FFE0 */  addiu     $a0, $a0, -0x20
/* 3DEA0 80062AA0 ACA2FFFC */  sw        $v0, -0x4($a1)
/* 3DEA4 80062AA4 ACA3FFF8 */  sw        $v1, -0x8($a1)
/* 3DEA8 80062AA8 ACA8FFF4 */  sw        $t0, -0xC($a1)
/* 3DEAC 80062AAC ACA9FFF0 */  sw        $t1, -0x10($a1)
/* 3DEB0 80062AB0 ACAAFFEC */  sw        $t2, -0x14($a1)
/* 3DEB4 80062AB4 ACABFFE8 */  sw        $t3, -0x18($a1)
/* 3DEB8 80062AB8 ACACFFE4 */  sw        $t4, -0x1C($a1)
/* 3DEBC 80062ABC ACADFFE0 */  sw        $t5, -0x20($a1)
/* 3DEC0 80062AC0 24A5FFE0 */  addiu     $a1, $a1, -0x20
/* 3DEC4 80062AC4 1000FFEA */  b         .LIQUE_80062A70
/* 3DEC8 80062AC8 24C6FFE0 */   addiu    $a2, $a2, -0x20
.LIQUE_80062ACC:
/* 3DECC 80062ACC 28C10010 */  slti      $at, $a2, 0x10
/* 3DED0 80062AD0 1420000D */  bnez      $at, .LIQUE_80062B08
/* 3DED4 80062AD4 00000000 */   nop
/* 3DED8 80062AD8 8C82FFFC */  lw        $v0, -0x4($a0)
/* 3DEDC 80062ADC 8C83FFF8 */  lw        $v1, -0x8($a0)
/* 3DEE0 80062AE0 8C88FFF4 */  lw        $t0, -0xC($a0)
/* 3DEE4 80062AE4 8C89FFF0 */  lw        $t1, -0x10($a0)
/* 3DEE8 80062AE8 2484FFF0 */  addiu     $a0, $a0, -0x10
/* 3DEEC 80062AEC ACA2FFFC */  sw        $v0, -0x4($a1)
/* 3DEF0 80062AF0 ACA3FFF8 */  sw        $v1, -0x8($a1)
/* 3DEF4 80062AF4 ACA8FFF4 */  sw        $t0, -0xC($a1)
/* 3DEF8 80062AF8 ACA9FFF0 */  sw        $t1, -0x10($a1)
/* 3DEFC 80062AFC 24A5FFF0 */  addiu     $a1, $a1, -0x10
/* 3DF00 80062B00 1000FFF2 */  b         .LIQUE_80062ACC
/* 3DF04 80062B04 24C6FFF0 */   addiu    $a2, $a2, -0x10
.LIQUE_80062B08:
/* 3DF08 80062B08 28C10004 */  slti      $at, $a2, 0x4
/* 3DF0C 80062B0C 1420FFB1 */  bnez      $at, .LIQUE_800629D4
/* 3DF10 80062B10 00000000 */   nop
/* 3DF14 80062B14 8C82FFFC */  lw        $v0, -0x4($a0)
/* 3DF18 80062B18 2484FFFC */  addiu     $a0, $a0, -0x4
/* 3DF1C 80062B1C ACA2FFFC */  sw        $v0, -0x4($a1)
/* 3DF20 80062B20 24A5FFFC */  addiu     $a1, $a1, -0x4
/* 3DF24 80062B24 1000FFF8 */  b         .LIQUE_80062B08
/* 3DF28 80062B28 24C6FFFC */   addiu    $a2, $a2, -0x4
/* 3DF2C 80062B2C 00000000 */  nop
