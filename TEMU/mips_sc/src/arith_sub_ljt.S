#include "trap.h"
.set noat
.globl main
.text
main:
   li       $v0, 0x80000000             # $v0 = 0x80000000
   li       $v1, 0x00000001             # $v1 = 0x00000001
   sub      $a0, $v0, $v1              # $a0 = 0x00000000(Int overflow error, getting 0 instead of 0x7FFF FFFF)
   nop
   nop
   nop
   nop
   subu     $a1, $v0, $v1              # $a1 = 0x7FFFFFFF
   nop
   nop
   nop
   nop

    HIT_GOOD_TRAP		# stop temu
