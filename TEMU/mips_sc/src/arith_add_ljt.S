#include "trap.h"
   .set noat
   .globl main
   .text
main:
   li       $v0, 0x10101010             #$v0 = 0x10101010
   li       $v1, 0x01011111             #$v1 = 0x01011111
   add      $a0, $v0, $v1              # $a0 = 0x11112121
   nop
   nop
   nop
   nop
   addu     $a1, $v0, $v1              # $a1 = 0x11112121
   nop
   nop
   nop
   nop
   addi     $a2, $v0, 0x00000001       # $a2 = 0x10101011
   nop
   nop
   nop
   nop
   addiu    $a3, $v0, 0x00000002       # $a3 = 0x10101012
   nop
   nop
   nop
   nop

    HIT_GOOD_TRAP		#stop temu