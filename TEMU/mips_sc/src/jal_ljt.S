#include "trap.h"
   .globl main
   .text
main:
   # 测试 jal (跳转并链接)
   li $t1, 0x11111111
   li $t2, 0x22222222
   jal func1        # 跳转并将返回地址保存在 $ra 寄存器
   nop
   nop

func1:
   li $t3, 0x33333333
   li $t4, 0x44444444
   jal func2        # 再次调用 jal 指令
   nop
   nop

func2:
   li $t5, 0x55555555
   li $t6, 0x66666666
   jal return_point # 跳转到结束
   nop
   nop

return_point:
   HIT_GOOD_TRAP   # 测试通过的标志
