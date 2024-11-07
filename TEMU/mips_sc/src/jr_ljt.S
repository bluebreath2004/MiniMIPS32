#include "trap.h"
   .globl main
   .text
main:
   # 测试 jr (寄存器跳转)
   li $t1, 0x11111111
   li $t2, 0x22222222
   jal set_return    # 使用 jal 跳转到 set_return，同时保存返回地址到 $ra
   nop
   nop
   li $t5, 0x55555555
   li $t6, 0x66666666
   HIT_GOOD_TRAP  

set_return:
   li $t3, 0x33333333
   li $t4, 0x44444444
   move $t0, $ra     # 将 $ra 的地址存储到 $t0，供后续的 jr 使用
   jr $t0            # 使用 jr 返回到主程序
   nop


