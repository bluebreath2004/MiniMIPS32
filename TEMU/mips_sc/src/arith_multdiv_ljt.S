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

   # 测试 mult (有符号乘法)
   mult     $t0, $t1                    # $t0 * $t1 -> HI/LO
   mflo     $s0                          # 将乘积低32位结果存入 $s0
   mfhi     $s1                          # 将乘积高32位结果存入 $s1
   nop
   nop

   # 测试 div (有符号除法)
   div      $t2, $t3                    # $t2 / $t3 -> HI/LO
   mflo     $s2                          # 将商的低32位结果存入 $s2
   mfhi     $s3                          # 将余数存入 $s3
   nop
   nop

   # 测试 multu (无符号乘法)
   multu    $t4, $t5                    # $t4 * $t5 -> HI/LO
   mflo     $s4                          # 将乘积低32位结果存入 $s4
   mfhi     $s5                          # 将乘积高32位结果存入 $s5
   nop
   nop

   # 测试 divu (无符号除法)
   divu     $t4, $t5                    # $t4 / $t5 -> HI/LO
   mflo     $s6                          # 将商的低32位结果存入 $s6
   mfhi     $s7                          # 将余数存入 $s7
   nop
   nop

   HIT_GOOD_TRAP    # Stop the program
