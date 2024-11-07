#include "trap.h"
   .set noat
   .globl main
   .text
main:
   li    $v0, 0x00000008            # $v0 = 0x00000008 
   li    $v1, 0x00800008            # $v1 = 0x00800008 
   li    $t0, 0x000000ff            # $t0 = 0x000000ff
   li    $t1, 0x0ff00000            # $t1 = 0x0ff00000
   li    $t2, 0x8f000000            # $t2 = 0x8f000000

   sllv  $s0, $t0, $v0              # $s0 = 0x0000ff00
   sllv  $s0, $t0, $v1              # $s0 = 0x0000ff00

   sll    $s0, $t0, 8               # $s0 = 0x0000ff00
   sll    $s0, $t0, 8               # $s0=0x0000ff00

   srav  $s0, $t1, $v0              # $s0 = 0x000ff000
   srav  $s0, $t1, $v1              # $s0 = 0x000ff000
   srav  $s0, $t2, $v0              # $s0 = 0xff8f0000
   srav  $s0, $t2, $v1              # $s0 = 0xff8f0000

   sra   $s0, $t1, 8                # $s0 = 0x000ff000
   sra   $s0, $t2, 8                # $s0 = 0xff8f0000
   sra   $s0, $t1, 16               # $s0 = 0x00000ff0
   sra   $s0, $t2, 16               # $s0 = 0xffff8f00

   srlv  $s0, $t1, $v0              # $s0 = 0x000ff000
   srlv  $s0, $t1, $v1              # $s0 = 0x000ff000
   srlv  $s0, $t2, $v0              # $s0 = 0x008f0000
   srlv  $s0, $t2, $v1              # $s0 = 0x008f0000

   nop
   nop
   
   srl   $s0, $t1, 8                # $s0 = 000ff000
   srl   $s0, $t2, 8                # $s0 = 0x008f0000
   srl   $s0, $t1, 16               # $s0 = 0x00000ff0
   srl   $s0, $t2, 16               # $s0 = 0x00008f00

   HIT_GOOD_TRAP		#stop temu