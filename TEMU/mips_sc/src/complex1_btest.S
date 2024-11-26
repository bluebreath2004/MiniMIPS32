#include "trap.h"
   .globl main
   .text
main:
   li       $t0,0x01519f05               # $t0 =0x01519f05
   li		$t1, 0x0000b945		      # $t1 = 0x0000b945
   li		$t2, 0x7fffffff		            # $t2 = 0x7fffffff
   li		$t3, 0x51aaf610		      # $t3 = 0x51aaf610
   li		$t4, 0x00000025		      # $t4 = 0x00000025
   li		$t5, 0x00000008		      # $t5 = 0x00000006
   li		$t6, 0x80000010			      # $t6 = 0x80000010
   li		$t7, 0xfffffffa		      # $t7 = 0xfffffffa
   li       $t8,0x00000001        # $t8 = 0x00000001  
   li       $a0,0xffffffff                 # $a0=0xffffffff

   add	$s0, $t0, $t1  		      # $s0 = 0x152584a
   bltzal   $s0, 1000f              # nb
   add       $s0, $t0, $t8             # $s0 =0x01519f06
   bne   $t0, $s0, 1000f            # b
   li    $t0, 0x01519f06               # $t0 =0x01519f06
   beq   $t0, $s0, 1000f             # b
   bne   $t0, $t5, 2000f             # b
   add	$s0, $t2, $t8		          # Integer Overflow   0xffffffff
   bltzal   $s0, 1000f              # b
   nop
   nop
   nop 
1000:
   li    $t3, 0x01519f06            # $t3 =0x01519f06
   beq   $t3, $t0, 2000f            # nb
   bne   $t3, $t0, 2000f            # b
2000:
   add	$s0, $t2, $t3		         # Integer Overflow
    addi      $s1,$t0,0x13b5                         #s1 = 0x1153b2ba
   lui         $t9,0                                                 #t9 = 0x0
   ori         $t9,$t9,0x0000762c                          #t9 = 0x000762c1   
   addi      $s1,$t1,0x1                                        #s1 = 0x0000b946
nop
   addu	$s0, $t2, $t2		         # $s0 = 0xfffffffe     0x7ffffffff+0x7ffffffff  not overflow
   addu	$s0, $a0, $a0              # $s0 = 0xfffffffe
   li    $t0, 0xfffffffe            # $t0 = 0xfffffffe
   beq   $t0, $s0, 3000f            # b
   addu	$s0, $t4, $t4		         # $s0 = 0x0000004a
   bltzal   $s0, 3000f              # nb
 nop
   addiu	$s0, $t0, 0x88		      # $s0 = 0x1519f8d
   addiu	$s0, $t1, 0xffff			   # $s0 = 0x0001b944
   li      $t9,0xffffffff
   addiu	$s0, $t9, 0xffff			   # $s0 = 0xfffffffe
   bltzal   $s0, 3000f              # b
nop
   sub	$s0, $t0, $t1		         # $s0 = 0x0150e5c0
   sub	$v1, $t2, $t6		         # Integer Overflow  0x51aaf616
3000:
   beq   $t0, $s0, 4000f            # nb
   bgezal   $s0, 5000f              # b
4000:
   li    $t8, 0xffffffff             # $t8 = 0xffffffff
   blez  $t8, 4500f                 # b
   bltz  $t8, 4500f                 # b
   sub	$v0, $t6, $t2		         # Integer Overflow    0x2e5509ef
nop
4500:
   subu	$s0, $t0, $t1		         # $s0 = 0x0150e5c0
   subu	$s1, $t2, $t6		         # $s0 = 0xffffffef
   subu	$s3, $t6, $t2		         # $s0 = 0x00000011
   blez  $s1, 5000f                 # b
   bltz  $s1, 5000f                 # b
   sub	$v0, $t6, $t2		         # Integer Overflow    0x2e5509ef
   nop
5000:
   blez  $v0, 6000f                 # nb
   bltz  $v0, 6000f                 # nb
   sub	$v0, $t6, $t2		         # Integer Overflow    0x2e5509ef
   slt	$s1, $t0, $t1		         # $s1= 0
   slt	$s2, $t1, $t0		         # $s2 = 1
   slt	$s3, $t2, $t6		         # $s3 = 0
   bgezal   $s2, 6000f              # b
   slt	$s4, $t6, $t2		         # $s4 = 1
  nop
  nop
6000:
   slti	$s0, $t2, 0x65aa		      # $s0 = 0
   slti	$s1, $t2, 0xfa00		      # $s0 = 0
   slti	$s2, $t1, 0xffff		          # $s0 = 0
   slti	$s3, $t5, 0x7fff		         # $s0 = 1
   blez  $s3, 7000f                 # nb
   bltz  $s3, 7000f                 # nb
nop
nop
nop
   sltu	$s1, $t0, $t1		         # $s0 = 0
   sub	$v0, $t6, $t2		         # Integer Overflow    0x2e5509ef
   bgtz  $s0, 7000f                 # b
   bgez  $s0, 7000f                 # b
   sub	$v1, $t2, $t6		         # Integer Overflow
   sltu	$s2, $t1, $t0		         # $s0 = 1
   sltu	$s3, $t2, $t6		         # $s0 = 1
   sltu	$s4, $t6, $t2		         # $s0 = 0
7000:
   nop
   nop
   bgez  $v1, 8000f                 # b
   bgtz  $s0, 8000f                 # b
   sub	$v1, $t2, $t6		         # Integer Overflow
   sltiu	$s1, $t2, 0x65aa		      # $s1 = 0
   bgtz  $s1, 8000f                 # b
   bgez  $s1, 8000f                 # b
   sltiu	$s2, $t2, 0xfa00		      # $s2 = 1
   bgez  $v1, 8000f                 # b
   bgtz  $v1, 8000f                 # b
   bgezal   $s1, 8000f              # b
   sltiu	$s3, $t1, 0xffff		         # $s3 = 1
   sltiu	$s4, $t5, 0x7fff		         # $s4 = 1
8000:
   nop
   mult	$t1, $t5			            # $lo = 0x0005ca28, $hi = 0x00000000
   mult	$t1, $t6			            # $lo = 0x00005ca2, $hi = 0x800b9450
   bgezal   $s2, 9000f              # b
  mult  $t7,$t4                     # $lo = 0x0                 , $hi = 0x
nop
9000:
   multu	$t1, $t5			            # $lo = 0x0005ca28, $hi = 0x00000000
   multu	$t1, $t6			            # $lo = 0x00005ca2, $hi = 0x800b9450
   multu  $t7,$t4                     # $lo = 0x00000024, $hi = 0xffffff22        

    HIT_GOOD_TRAP