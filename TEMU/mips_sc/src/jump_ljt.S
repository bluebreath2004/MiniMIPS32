#include "trap.h"
   .globl main
   .text
main:
   # 测试 j (无条件跳转)
   li $t1, 0x12345678
   li $t2, 0x87654321
   j jump1       
   nop
   nop
jump1:
   li $t1, 0x12345678
   li $t2, 0x87654321
   j jump2
   nop
   nop

jump3:
   HIT_GOOD_TRAP

jump2:
   li $t3, 0xabcd1234
   li $t4, 0x5678cdef
   j jump3
   nop
   nop
