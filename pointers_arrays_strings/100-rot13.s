	.file	"100-rot13.c"
	.text
	.globl	rot13
	.type	rot13, @function
rot13:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$6148631004284211022, %rax
	movabsq	$4846508005305898838, %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movabsq	$5425229275903444292, %rax
	movabsq	$8318836189426502988, %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movabsq	$7024060127144998260, %rax
	movabsq	$7595434461045744482, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movl	$1835821930, -80(%rbp)
	movb	$0, -76(%rbp)
	movabsq	$5208208757389214273, %rax
	movabsq	$5786930140093827657, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movabsq	$6365651522798441041, %rax
	movabsq	$7378413942531512921, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movabsq	$7957135325236127847, %rax
	movabsq	$8535856707940741231, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$2054781047, -16(%rbp)
	movb	$0, -12(%rbp)
	movl	$0, -136(%rbp)
	jmp	.L2
.L7:
	movb	$0, -137(%rbp)
	movl	$0, -132(%rbp)
	jmp	.L3
.L6:
	movl	-136(%rbp), %eax
	movslq	%eax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-132(%rbp), %eax
	cltq
	movzbl	-64(%rbp,%rax), %eax
	cmpb	%al, %dl
	jne	.L4
	movl	-136(%rbp), %eax
	movslq	%eax, %rdx
	movq	-152(%rbp), %rax
	addq	%rax, %rdx
	movl	-132(%rbp), %eax
	cltq
	movzbl	-128(%rbp,%rax), %eax
	movb	%al, (%rdx)
	movb	$1, -137(%rbp)
.L4:
	addl	$1, -132(%rbp)
.L3:
	movl	-132(%rbp), %eax
	cltq
	movzbl	-64(%rbp,%rax), %eax
	testb	%al, %al
	je	.L5
	cmpb	$0, -137(%rbp)
	je	.L6
.L5:
	addl	$1, -136(%rbp)
.L2:
	movl	-136(%rbp), %eax
	movslq	%eax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L7
	movq	-152(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	rot13, .-rot13
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
