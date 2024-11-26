OUTPUT_ARCH(mips)
ENTRY(main)
SECTIONS
{
        . = 0xbfc00000;  /* 代码段的起始地址 */
        .text : 
        {
            *(.text)
            _etext = .;
        }

        . = 0x80000000;  /* 数据段的起始地址 */
        .data : 
        {
            *(.data)
        }

        .bss : 
        {
            *(.bss)
        }

        .eh_frame_hdr : 
        {
            *(.eh_frame_entry .eh_frame_entry.*)
        }

        /* 堆栈区域，设置堆栈起始地址 */
        .stack (NOLOAD) :
        {
            . = 0x7fffe000;  /* 堆栈起始地址，靠近虚拟地址空间的上限 */
            *(.stack)
        }
}
