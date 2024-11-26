
build/arithc:     file format elf32-tradlittlemips
build/arithc

DYNAMIC SYMBOL TABLE:
no symbols



Disassembly of section .text:

bfc00000 <delay>:
delay():
bfc00000:	27bdfff0 	addiu	sp,sp,-16
bfc00004:	afbe000c 	sw	s8,12(sp)
bfc00008:	03a0f021 	move	s8,sp
bfc0000c:	afc00000 	sw	zero,0(s8)
bfc00010:	10000004 	b	bfc00024 <delay+0x24>
bfc00014:	00000000 	nop
bfc00018:	8fc20000 	lw	v0,0(s8)
bfc0001c:	24420001 	addiu	v0,v0,1
bfc00020:	afc20000 	sw	v0,0(s8)
bfc00024:	8fc30000 	lw	v1,0(s8)
bfc00028:	3c02004c 	lui	v0,0x4c
bfc0002c:	34424b40 	ori	v0,v0,0x4b40
bfc00030:	1462fff9 	bne	v1,v0,bfc00018 <delay+0x18>
bfc00034:	00000000 	nop
bfc00038:	03c0e821 	move	sp,s8
bfc0003c:	8fbe000c 	lw	s8,12(sp)
bfc00040:	27bd0010 	addiu	sp,sp,16
bfc00044:	03e00008 	jr	ra
bfc00048:	00000000 	nop

bfc0004c <init>:
init():
bfc0004c:	27bdffe8 	addiu	sp,sp,-24
bfc00050:	afbf0014 	sw	ra,20(sp)
bfc00054:	afbe0010 	sw	s8,16(sp)
bfc00058:	03a0f021 	move	s8,sp
bfc0005c:	3c02bfaf 	lui	v0,0xbfaf
bfc00060:	3442f000 	ori	v0,v0,0xf000
bfc00064:	240300f0 	li	v1,240
bfc00068:	ac430000 	sw	v1,0(v0)
bfc0006c:	0ff00000 	jal	bfc00000 <delay>
bfc00070:	00000000 	nop
bfc00074:	03c0e821 	move	sp,s8
bfc00078:	8fbf0014 	lw	ra,20(sp)
bfc0007c:	8fbe0010 	lw	s8,16(sp)
bfc00080:	27bd0018 	addiu	sp,sp,24
bfc00084:	03e00008 	jr	ra
bfc00088:	00000000 	nop

bfc0008c <print_result>:
print_result():
bfc0008c:	27bdffe8 	addiu	sp,sp,-24
bfc00090:	afbf0014 	sw	ra,20(sp)
bfc00094:	afbe0010 	sw	s8,16(sp)
bfc00098:	03a0f021 	move	s8,sp
bfc0009c:	afc40018 	sw	a0,24(s8)
bfc000a0:	8fc30018 	lw	v1,24(s8)
bfc000a4:	24020001 	li	v0,1
bfc000a8:	14620009 	bne	v1,v0,bfc000d0 <print_result+0x44>
bfc000ac:	00000000 	nop
bfc000b0:	0ff00000 	jal	bfc00000 <delay>
bfc000b4:	00000000 	nop
bfc000b8:	3c02bfaf 	lui	v0,0xbfaf
bfc000bc:	3442f000 	ori	v0,v0,0xf000
bfc000c0:	2403000f 	li	v1,15
bfc000c4:	ac430000 	sw	v1,0(v0)
bfc000c8:	1000fff9 	b	bfc000b0 <print_result+0x24>
bfc000cc:	00000000 	nop
bfc000d0:	3c02bfaf 	lui	v0,0xbfaf
bfc000d4:	3442f000 	ori	v0,v0,0xf000
bfc000d8:	240300f0 	li	v1,240
bfc000dc:	ac430000 	sw	v1,0(v0)
bfc000e0:	03c0e821 	move	sp,s8
bfc000e4:	8fbf0014 	lw	ra,20(sp)
bfc000e8:	8fbe0010 	lw	s8,16(sp)
bfc000ec:	27bd0018 	addiu	sp,sp,24
bfc000f0:	03e00008 	jr	ra
bfc000f4:	00000000 	nop

bfc000f8 <main>:
main():
bfc000f8:	27bdffe0 	addiu	sp,sp,-32
bfc000fc:	afbf001c 	sw	ra,28(sp)
bfc00100:	afbe0018 	sw	s8,24(sp)
bfc00104:	03a0f021 	move	s8,sp
bfc00108:	0ff00000 	jal	bfc00000 <delay>
bfc0010c:	00000000 	nop
bfc00110:	afc00010 	sw	zero,16(s8)
bfc00114:	afc00014 	sw	zero,20(s8)
bfc00118:	afc00014 	sw	zero,20(s8)
bfc0011c:	10000012 	b	bfc00168 <main+0x70>
bfc00120:	00000000 	nop
bfc00124:	8fc30014 	lw	v1,20(s8)
bfc00128:	8fc20014 	lw	v0,20(s8)
bfc0012c:	00620018 	mult	v1,v0
bfc00130:	8fc20010 	lw	v0,16(s8)
bfc00134:	00001812 	mflo	v1
bfc00138:	00431021 	addu	v0,v0,v1
bfc0013c:	afc20010 	sw	v0,16(s8)
bfc00140:	8fc20014 	lw	v0,20(s8)
bfc00144:	30420001 	andi	v0,v0,0x1
bfc00148:	10400004 	beqz	v0,bfc0015c <main+0x64>
bfc0014c:	00000000 	nop
bfc00150:	8fc20010 	lw	v0,16(s8)
bfc00154:	2442ffff 	addiu	v0,v0,-1
bfc00158:	afc20010 	sw	v0,16(s8)
bfc0015c:	8fc20014 	lw	v0,20(s8)
bfc00160:	24420001 	addiu	v0,v0,1
bfc00164:	afc20014 	sw	v0,20(s8)
bfc00168:	8fc20014 	lw	v0,20(s8)
bfc0016c:	28420032 	slti	v0,v0,50
bfc00170:	1440ffec 	bnez	v0,bfc00124 <main+0x2c>
bfc00174:	00000000 	nop
bfc00178:	00001021 	move	v0,zero
bfc0017c:	03c0e821 	move	sp,s8
bfc00180:	8fbf001c 	lw	ra,28(sp)
bfc00184:	8fbe0018 	lw	s8,24(sp)
bfc00188:	27bd0020 	addiu	sp,sp,32
bfc0018c:	03e00008 	jr	ra
bfc00190:	00000000 	nop

Disassembly of section .stack:

80000000 <.stack>:
	...

Disassembly of section .reginfo:

00000000 <.reginfo>:
   0:	e000001c 	swc0	$0,28(zero)
	...

Disassembly of section .pdr:

00000000 <.pdr>:
   0:	bfc00000 	0xbfc00000
   4:	40000000 	mfc0	zero,c0_index
   8:	fffffffc 	0xfffffffc
	...
  14:	00000010 	mfhi	zero
  18:	0000001e 	0x1e
  1c:	0000001f 	0x1f
  20:	bfc0004c 	0xbfc0004c
  24:	c0000000 	lwc0	$0,0(zero)
  28:	fffffffc 	0xfffffffc
	...
  34:	00000018 	mult	zero,zero
  38:	0000001e 	0x1e
  3c:	0000001f 	0x1f
  40:	bfc0008c 	0xbfc0008c
  44:	c0000000 	lwc0	$0,0(zero)
  48:	fffffffc 	0xfffffffc
	...
  54:	00000018 	mult	zero,zero
  58:	0000001e 	0x1e
  5c:	0000001f 	0x1f
  60:	bfc000f8 	0xbfc000f8
  64:	c0000000 	lwc0	$0,0(zero)
  68:	fffffffc 	0xfffffffc
	...
  74:	00000020 	add	zero,zero,zero
  78:	0000001e 	0x1e
  7c:	0000001f 	0x1f

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	xori	v1,s2,0x4347
   4:	6f532820 	0x6f532820
   8:	65637275 	0x65637275
   c:	43207972 	c0	0x1207972
  10:	4265646f 	c0	0x65646f
  14:	68636e65 	0x68636e65
  18:	74694c20 	jalx	1a53080 <delay-0xbe1acf80>
  1c:	30322065 	andi	s2,at,0x2065
  20:	302e3331 	andi	t6,at,0x3331
  24:	35362d35 	ori	s6,t1,0x2d35
  28:	2e342029 	sltiu	s4,s1,8233
  2c:	00332e37 	0x332e37

Disassembly of section .gnu.attributes:

00000000 <.gnu.attributes>:
   0:	00000f41 	0xf41
   4:	756e6700 	jalx	5b99c00 <delay-0xba066400>
   8:	00070100 	sll	zero,a3,0x4
   c:	01040000 	0x1040000
