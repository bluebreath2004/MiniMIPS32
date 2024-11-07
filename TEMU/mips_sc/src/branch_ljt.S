#include "trap.h"
   .globl main
   .text
main:
   li       $t0, 0x01519f05         # $t0 = 0x01519f05
   li       $t1, 0x0000b945         # $t1 = 0x0000b945
   li       $t2, 0x7fffffff         # $t2 = 0x7fffffff
   li       $t3, 0x51aaf610         # $t3 = 0x51aaf610
   li       $t4, 0x00000025         # $t4 = 0x00000025
   li       $t5, 0x00000008         # $t5 = 0x00000008
   li       $t6, 0x80000010         # $t6 = 0x80000010
   li       $t7, 0xfffffffa         # $t7 = 0xfffffffa
   li       $a0, 0xffffffff         # $a0 = 0xffffffff

   # 测试分支指令
   add      $s0, $t0, $t1           # $s0 = 0x152584a
   bltzal   $s0, 1000f              # 如果$s0 < 0，则跳转
   add      $s0, $t0, $t7           # 这里不应该执行，除非bltzal跳转
1000:
   add      $s0, $t0, $t6           # 跳转后的操作
   bne      $t0, $s0, 2000f         # 如果$t0 != $s0，则跳转
   li       $t0, 0x01519f06         # $t0 = 0x01519f06
   beq      $t0, $s0, 2000f         # 如果$t0 == $s0，则跳转
2000:
   li       $t3, 0x01519f06         # $t3 = 0x01519f06
   beq      $t3, $t0, 3000f         # 如果$t3 == $t0，则跳转
   bne      $t3, $t0, 3000f         # 如果$t3 != $t0，则跳转
3000:
   add      $s0, $t2, $t3           # Integer Overflow (不会发生实际计算，只是为了测试分支指令)
   li       $t9, 0xffffffff         # $t9 = 0xffffffff
   addiu    $s0, $t9, 0xffff       # $s0 = 0xfffffffe
   bltzal   $s0, 4000f              # 如果$s0 < 0，则跳转
   nop
4000:
   blez     $t8, 4500f              # 如果$t8 <= 0，则跳转
   bltz     $t8, 4500f              # 如果$t8 < 0，则跳转
4500:
   blez     $s0, 5000f              # 如果$s0 <= 0，则跳转
   bltz     $s0, 5000f              # 如果$s0 < 0，则跳转
5000:
   blez     $v0, 6000f              # 如果$v0 <= 0，则跳转
   bltz     $v0, 6000f              # 如果$v0 < 0，则跳转
6000:
   slti     $s0, $t2, 0x65aa        # 如果$t2 < 0x65aa，则$s0 = 1，否则$s0 = 0
   slti     $s1, $t2, 0xfa00        # 如果$t2 < 0xfa00，则$s1 = 1，否则$s1 = 0
   bgez     $s1, 7000f              # 如果$s1 >= 0，则跳转
   bgtz     $s1, 7000f              # 如果$s1 > 0，则跳转
7000:
   nop
   nop
   bgez     $v1, 8000f              # 如果$v1 >= 0，则跳转
   bgtz     $s0, 8000f              # 如果$s0 > 0，则跳转
8000:
   nop
   nop
   mult     $t1, $t5                # $lo = 0x0005ca28, $hi = 0x00000000
   mult     $t1, $t6                # $lo = 0x00005ca2, $hi = 0x800b9450
   bgezal   $s2, 9000f              # 如果$s2 >= 0，则跳转
9000:
   multu    $t1, $t5                # $lo = 0x0005ca28, $hi = 0x00000000
   multu    $t1, $t6                # $lo = 0x00005ca2, $hi = 0x800b9450
   multu    $t7, $t4                # $lo = 0x0, $hi = 0x0

   HIT_GOOD_TRAP
