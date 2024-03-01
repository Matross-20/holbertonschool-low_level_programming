	.file	"2-strncpy.c"
	.text
	.globl	_strncpy
	.type	_strncpy, @function
_strncpy:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2
.L4:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
	subl	$1, -36(%rbp)
	addq	$1, -32(%rbp)
.L2:
	cmpl	$0, -36(%rbp)
	je	.L5
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L4
	jmp	.L5
.L7:
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	subl	$1, -36(%rbp)
	addq	$1, -8(%rbp)
.L5:
	cmpl	$0, -36(%rbp)
	je	.L6
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L7
.L6:
	movq	-24(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_strncpy, .-_strncpy
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
