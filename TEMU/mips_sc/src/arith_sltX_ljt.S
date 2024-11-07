#include "trap.h"
   .globl main
   .text
main:
   li       $t0, 0x01519f05             # $t0 = 0x01519f05
   li       $t1, 0x0000b945             # $t1 = 0x0000b945
   li       $t2, 0x7fffffff             # $t2 = 0x7fffffff
   li       $t3, 0x80000000             # $t3 = 0x80000000
   li       $t4, 0x0000aaaa             # $t4 = 0x0000aaaa
   li       $t5, 0x0000ffff             # $t5 = 0x0000ffff

   # 有符号比较
   slt      $s0, $t0, $t1              # $s0 = 0 
   nop
   nop
   slt      $s1, $t2, $t3              # $s1 = 0 
   nop
   nop
   slt      $s2, $t3, $t2              # $s2 = 1 
   nop
   nop

   # 有符号立即数比较
   slti     $s3, $t4, 0x1000           # $s3 = 0 
   nop
   nop

   # 无符号比较
   sltu     $s4, $t0, $t1              # $s4 = 0
   nop
   nop
   sltu     $s5, $t2, $t3              # $s5 = 1 
   nop
   nop
   sltu     $s6, $t3, $t2              # $s6 = 0 
   nop
   nop

   # 无符号立即数比较
   li       $t6, 0x1000              
   sltu     $s7, $t4, $t6              # $s7 = 0
   nop
   nop

   # 无符号立即数比较 (sltiu)
   li       $t6, 0x1000               # 载入一个立即数
   sltiu	   $s8, $t2, 0x65aa		      # $s8 = 0
   nop
   nop

   HIT_GOOD_TRAP    # Stop the program
