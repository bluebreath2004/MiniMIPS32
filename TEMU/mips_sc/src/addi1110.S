#include "trap.h"
   .set noat
   .globl main
   .text
main:
   li       $v0, 0x10101010             #$v0 = 0x10101010
   li       $v1, 0x01011111             #$v1 = 0x01011111
   addi     $a2, $v0, 0x00000001       # $a2 = 0x10101011
   nop
   nop
   nop
   nop

    HIT_GOOD_TRAP		#stop temu