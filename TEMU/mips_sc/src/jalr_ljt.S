#include "trap.h"
   .globl main
   .text
main:
   # 测试 jalr (跳转并链接到寄存器地址)
   li $t1, 0x11111111
   li $t2, 0x22222222
   la $t0, func1       # 将 func1 的地址加载到 $t0
   jalr $ra, $t0       # 使用 jalr 跳转到 func1，同时保存返回地址到 $ra
   nop
   nop

func1:
   li $t3, 0x33333333
   li $t4, 0x44444444
   la $t0, func2       # 将 func2 的地址加载到 $t0
   jalr $ra, $t0       # 使用 jalr 跳转到 func2
   nop
   nop

func2:
   li $t5, 0x55555555
   li $t6, 0x66666666
   la $t0, return_point # 将 return_point 的地址加载到 $t0
   jalr $ra, $t0        # 使用 jalr 跳转到 return_point
   nop
   nop

return_point:
   HIT_GOOD_TRAP       # 测试通过的标志
