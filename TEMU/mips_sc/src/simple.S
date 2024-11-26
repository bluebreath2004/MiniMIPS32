	.file	1 "simple.C"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.text
	.align	2
	.globl	_Z5delayv
	.cfi_sections .eh_frame_entry
.LFB0 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z5delayv
	.type	_Z5delayv, @function
_Z5delayv:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	.cfi_def_cfa_offset 16
	sw	$fp,12($sp)
	.cfi_offset 30, -4
	move	$fp,$sp
	.cfi_def_cfa_register 30
	sw	$0,0($fp)
	b	.L2
	nop

.L3:
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
.L2:
	lw	$3,0($fp)
	li	$2,-5046272			# 0xffffffffffb30000
	ori	$2,$2,0xb4c0
	addu	$2,$3,$2
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	bne	$2,$0,.L3
	nop

	.cfi_epilogue_begin
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z5delayv
	.cfi_endproc
.LFE0:
	.size	_Z5delayv, .-_Z5delayv
	.align	2
	.globl	_Z4initv
.LFB1 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z4initv
	.type	_Z4initv, @function
_Z4initv:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)
	sw	$fp,16($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	li	$2,-1079050240			# 0xffffffffbfaf0000
	ori	$2,$2,0xf000
	li	$3,240			# 0xf0
	sw	$3,0($2)
	jal	_Z5delayv
	nop

	.cfi_epilogue_begin
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z4initv
	.cfi_endproc
.LFE1:
	.size	_Z4initv, .-_Z4initv
	.align	2
	.globl	_Z12print_resulti
.LFB2 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z12print_resulti
	.type	_Z12print_resulti, @function
_Z12print_resulti:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)
	sw	$fp,16($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	sw	$4,24($fp)
	lw	$3,24($fp)
	li	$2,1			# 0x1
	bne	$3,$2,.L6
	nop

.L7:
	jal	_Z5delayv
	nop

	li	$2,-1079050240			# 0xffffffffbfaf0000
	ori	$2,$2,0xf000
	li	$3,15			# 0xf
	sw	$3,0($2)
	b	.L7
	nop

.L6:
	li	$2,-1079050240			# 0xffffffffbfaf0000
	ori	$2,$2,0xf000
	li	$3,240			# 0xf0
	sw	$3,0($2)
	.cfi_epilogue_begin
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z12print_resulti
	.cfi_endproc
.LFE2:
	.size	_Z12print_resulti, .-_Z12print_resulti
	.globl	image
	.data
	.align	2
	.type	image, @object
	.size	image, 100
image:
	.word	0
	.word	255
	.word	0
	.word	0
	.word	0
	.word	0
	.word	255
	.word	0
	.word	0
	.word	0
	.word	0
	.word	255
	.word	0
	.word	0
	.word	0
	.word	0
	.word	255
	.word	0
	.word	0
	.word	0
	.word	0
	.word	255
	.word	0
	.word	0
	.word	0
	.globl	ans
	.align	2
	.type	ans, @object
	.size	ans, 100
ans:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1020
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1020
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1020
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.globl	sobel_x
	.align	2
	.type	sobel_x, @object
	.size	sobel_x, 36
sobel_x:
	.word	-1
	.word	0
	.word	1
	.word	-2
	.word	0
	.word	2
	.word	-1
	.word	0
	.word	1
	.globl	sobel_y
	.align	2
	.type	sobel_y, @object
	.size	sobel_y, 36
sobel_y:
	.word	-1
	.word	-2
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	2
	.word	1
	.text
	.align	2
	.globl	_Z11convolutionPA5_iPA3_iS0_
.LFB3 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z11convolutionPA5_iPA3_iS0_
	.type	_Z11convolutionPA5_iPA3_iS0_, @function
_Z11convolutionPA5_iPA3_iS0_:
	.frame	$fp,32,$31		# vars= 24, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	.cfi_def_cfa_offset 32
	sw	$fp,28($sp)
	.cfi_offset 30, -4
	move	$fp,$sp
	.cfi_def_cfa_register 30
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$6,40($fp)
	li	$2,1			# 0x1
	sw	$2,0($fp)
	b	.L9
	nop

.L16:
	li	$2,1			# 0x1
	sw	$2,4($fp)
	b	.L10
	nop

.L15:
	sw	$0,16($fp)
	li	$2,-1			# 0xffffffffffffffff
	sw	$2,8($fp)
	b	.L11
	nop

.L14:
	li	$2,-1			# 0xffffffffffffffff
	sw	$2,12($fp)
	b	.L12
	nop

.L13:
	lw	$3,0($fp)
	lw	$2,8($fp)
	addu	$2,$3,$2
	sll	$2,$2,2
	sll	$3,$2,2
	addu	$2,$2,$3
	lw	$3,32($fp)
	addu	$3,$3,$2
	lw	$4,4($fp)
	lw	$2,12($fp)
	addu	$2,$4,$2
	sll	$2,$2,2
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,1
	sll	$2,$2,2
	sll	$4,$2,2
	subu	$2,$4,$2
	lw	$4,36($fp)
	addu	$4,$4,$2
	lw	$2,12($fp)
	addiu	$2,$2,1
	sll	$2,$2,2
	addu	$2,$4,$2
	lw	$2,0($2)
	mult	$3,$2
	lw	$2,16($fp)
	mflo	$3
	addu	$2,$2,$3
	sw	$2,16($fp)
	lw	$2,12($fp)
	addiu	$2,$2,1
	sw	$2,12($fp)
.L12:
	lw	$2,12($fp)
	slt	$2,$2,2
	andi	$2,$2,0x00ff
	bne	$2,$0,.L13
	nop

	lw	$2,8($fp)
	addiu	$2,$2,1
	sw	$2,8($fp)
.L11:
	lw	$2,8($fp)
	slt	$2,$2,2
	andi	$2,$2,0x00ff
	bne	$2,$0,.L14
	nop

	lw	$2,0($fp)
	sll	$2,$2,2
	sll	$3,$2,2
	addu	$2,$2,$3
	lw	$3,40($fp)
	addu	$3,$3,$2
	lw	$2,4($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	lw	$3,16($fp)
	sw	$3,0($2)
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
.L10:
	lw	$2,4($fp)
	slt	$2,$2,4
	andi	$2,$2,0x00ff
	bne	$2,$0,.L15
	nop

	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
.L9:
	lw	$2,0($fp)
	slt	$2,$2,4
	andi	$2,$2,0x00ff
	bne	$2,$0,.L16
	nop

	.cfi_epilogue_begin
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z11convolutionPA5_iPA3_iS0_
	.cfi_endproc
.LFE3:
	.size	_Z11convolutionPA5_iPA3_iS0_, .-_Z11convolutionPA5_iPA3_iS0_
	.align	2
	.globl	_Z9initImagePA5_i
.LFB4 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z9initImagePA5_i
	.type	_Z9initImagePA5_i, @function
_Z9initImagePA5_i:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	.cfi_def_cfa_offset 16
	sw	$fp,12($sp)
	.cfi_offset 30, -4
	move	$fp,$sp
	.cfi_def_cfa_register 30
	sw	$4,16($fp)
	sw	$0,0($fp)
	b	.L18
	nop

.L21:
	sw	$0,4($fp)
	b	.L19
	nop

.L20:
	lw	$2,0($fp)
	sll	$2,$2,2
	sll	$3,$2,2
	addu	$2,$2,$3
	lw	$3,16($fp)
	addu	$3,$3,$2
	lw	$2,4($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	sw	$0,0($2)
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
.L19:
	lw	$2,4($fp)
	slt	$2,$2,5
	andi	$2,$2,0x00ff
	bne	$2,$0,.L20
	nop

	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
.L18:
	lw	$2,0($fp)
	slt	$2,$2,5
	andi	$2,$2,0x00ff
	bne	$2,$0,.L21
	nop

	.cfi_epilogue_begin
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z9initImagePA5_i
	.cfi_endproc
.LFE4:
	.size	_Z9initImagePA5_i, .-_Z9initImagePA5_i
	.align	2
	.globl	main
.LFB5 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,336,$31		# vars= 312, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-336
	.cfi_def_cfa_offset 336
	sw	$31,332($sp)
	sw	$fp,328($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	jal	_Z4initv
	nop

	addiu	$2,$fp,28
	move	$4,$2
	jal	_Z9initImagePA5_i
	nop

	addiu	$2,$fp,228
	move	$4,$2
	jal	_Z9initImagePA5_i
	nop

	addiu	$2,$fp,128
	move	$4,$2
	jal	_Z9initImagePA5_i
	nop

	addiu	$2,$fp,228
	lui	$3,%hi(image)
	addiu	$4,$3,%lo(image)
	lui	$3,%hi(sobel_x)
	addiu	$5,$3,%lo(sobel_x)
	move	$6,$2
	jal	_Z11convolutionPA5_iPA3_iS0_
	nop

	addiu	$2,$fp,128
	lui	$3,%hi(image)
	addiu	$4,$3,%lo(image)
	lui	$3,%hi(sobel_y)
	addiu	$5,$3,%lo(sobel_y)
	move	$6,$2
	jal	_Z11convolutionPA5_iPA3_iS0_
	nop

	li	$2,1			# 0x1
	sw	$2,16($fp)
	b	.L23
	nop

.L26:
	li	$2,1			# 0x1
	sw	$2,20($fp)
	b	.L24
	nop

.L25:
	lw	$3,16($fp)
	move	$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	lw	$3,20($fp)
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,16
	addu	$2,$3,$2
	lw	$4,212($2)
	lw	$3,16($fp)
	move	$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	lw	$3,20($fp)
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,16
	addu	$2,$3,$2
	lw	$2,112($2)
	addu	$4,$4,$2
	lw	$3,16($fp)
	move	$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	lw	$3,20($fp)
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,16
	addu	$2,$3,$2
	sw	$4,12($2)
	lw	$2,20($fp)
	addiu	$2,$2,1
	sw	$2,20($fp)
.L24:
	lw	$2,20($fp)
	slt	$2,$2,4
	andi	$2,$2,0x00ff
	bne	$2,$0,.L25
	nop

	lw	$2,16($fp)
	addiu	$2,$2,1
	sw	$2,16($fp)
.L23:
	lw	$2,16($fp)
	slt	$2,$2,4
	andi	$2,$2,0x00ff
	bne	$2,$0,.L26
	nop

	li	$2,1			# 0x1
	sw	$2,24($fp)
	sw	$0,16($fp)
	b	.L27
	nop

.L32:
	sw	$0,20($fp)
	b	.L28
	nop

.L31:
	lw	$3,16($fp)
	move	$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	lw	$3,20($fp)
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,16
	addu	$2,$3,$2
	lw	$4,12($2)
	lui	$5,%hi(ans)
	lw	$3,16($fp)
	move	$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	lw	$3,20($fp)
	addu	$2,$2,$3
	sll	$3,$2,2
	addiu	$2,$5,%lo(ans)
	addu	$2,$3,$2
	lw	$2,0($2)
	beq	$4,$2,.L29
	nop

	sw	$0,24($fp)
	b	.L30
	nop

.L29:
	lw	$2,20($fp)
	addiu	$2,$2,1
	sw	$2,20($fp)
.L28:
	lw	$2,20($fp)
	slt	$2,$2,5
	andi	$2,$2,0x00ff
	bne	$2,$0,.L31
	nop

.L30:
	lw	$2,16($fp)
	addiu	$2,$2,1
	sw	$2,16($fp)
.L27:
	lw	$2,16($fp)
	slt	$2,$2,5
	andi	$2,$2,0x00ff
	bne	$2,$0,.L32
	nop

	lw	$3,16($fp)
	li	$2,5			# 0x5
	bne	$3,$2,.L33
	nop

	lw	$3,20($fp)
	li	$2,5			# 0x5
	beq	$3,$2,.L34
	nop

.L33:
	sw	$0,24($fp)
.L34:
	lw	$4,24($fp)
	jal	_Z12print_resulti
	nop

.L35:
	b	.L35
	nop

	.set	macro
	.set	reorder
	.end	main
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Sourcery CodeBench Lite 2013.05-65) 4.7.3"
