	.file	"0-isupper.c"
	.text
	.globl	_isupper
	.type	_isupper, @function
_isupper:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movb	$65, -5(%rbp)
	movl	$48, -4(%rbp)
	jmp	.L2
.L5:
	movsbl	-5(%rbp), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L3
	movl	$1, -4(%rbp)
	jmp	.L4
.L3:
	movzbl	-5(%rbp), %eax
	addl	$1, %eax
	movb	%al, -5(%rbp)
.L2:
	cmpb	$90, -5(%rbp)
	jle	.L5
.L4:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_isupper, .-_isupper
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
