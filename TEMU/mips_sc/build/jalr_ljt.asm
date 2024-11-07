
build/jalr_ljt:     file format elf32-tradlittlemips
build/jalr_ljt


Disassembly of section .text:

bfc00000 <main>:
bfc00000:	3c091111 	lui	t1,0x1111
bfc00004:	35291111 	ori	t1,t1,0x1111
bfc00008:	3c0a2222 	lui	t2,0x2222
bfc0000c:	354a2222 	ori	t2,t2,0x2222
bfc00010:	3c08bfc0 	lui	t0,0xbfc0
bfc00014:	25080028 	addiu	t0,t0,40
bfc00018:	0100f809 	jalr	t0
bfc0001c:	00000000 	nop
	...

bfc00028 <func1>:
func1():
bfc00028:	3c0b3333 	lui	t3,0x3333
bfc0002c:	356b3333 	ori	t3,t3,0x3333
bfc00030:	3c0c4444 	lui	t4,0x4444
bfc00034:	358c4444 	ori	t4,t4,0x4444
bfc00038:	3c08bfc0 	lui	t0,0xbfc0
bfc0003c:	25080050 	addiu	t0,t0,80
bfc00040:	0100f809 	jalr	t0
bfc00044:	00000000 	nop
	...

bfc00050 <func2>:
func2():
bfc00050:	3c0d5555 	lui	t5,0x5555
bfc00054:	35ad5555 	ori	t5,t5,0x5555
bfc00058:	3c0e6666 	lui	t6,0x6666
bfc0005c:	35ce6666 	ori	t6,t6,0x6666
bfc00060:	3c08bfc0 	lui	t0,0xbfc0
bfc00064:	25080078 	addiu	t0,t0,120
bfc00068:	0100f809 	jalr	t0
bfc0006c:	00000000 	nop
	...

bfc00078 <return_point>:
return_point():
bfc00078:	4a000000 	c2	0x0

Disassembly of section .reginfo:

00000000 <.reginfo>:
   0:	90007f00 	lbu	zero,32512(zero)
	...
