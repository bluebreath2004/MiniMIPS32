#include "trap.h"
   .set noat
   .globl main
   .text
main:
   lui   $v0, 0
   ori   $v0, $v0, 0x000f           # v0=0x0000000f
   lui   $v1, 0
   ori   $v1, $v1, 0x000c           # v1=0x0000000c
   lui   $a0, 0x7fff
   ori   $a0, $a0, 0xffff           # a0=0x7fffffff
   lui   $v0, 0x1111
   ori   $v0, $v0, 0x000f           # a1=0x1111000f

   mthi  $v0                        # $hi = 0x0000000f
   mtlo  $v1                        # $lo = 0x0000000c
   mfhi  $t0                        # $t0 = 0x0000000f
   mflo  $t1                        # $t1 = 0x0000000c
   mthi  $a0                        # $hi = 0x7fffffff
   mtlo  $a1                        # $lo = 0x1111000f
   mfhi  $t2                        # $t2 =0x7fffffff
   mflo  $t3                        # $t3 = 0x1111000f
  

   HIT_GOOD_TRAP		#stop temu