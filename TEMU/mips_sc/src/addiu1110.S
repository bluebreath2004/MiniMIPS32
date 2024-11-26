#include "trap.h"
   .set noat
   .globl main
   .text
main:
   li       $v0, 0x10101010             #$v0 = 0x10101010
   li       $v1, 0x01011111             #$v1 = 0x01011111
   addiu    $a3, $v0, 0x00000002       # $a3 = 0x10101012
   nop
   nop
   nop
   nop

    HIT_GOOD_TRAP		#stop temu