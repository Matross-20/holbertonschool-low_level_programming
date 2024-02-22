	.file	"8-print_base16.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -8(%rbp)
	jmp	.L2
.L3:
	movl	-8(%rbp), %eax
	addl	$48, %eax
	movb	%al, -9(%rbp)
	movsbl	-9(%rbp), %eax
	movl	%eax, %edi
	call	putchar@PLT
	addl	$1, -8(%rbp)
.L2:
	cmpl	$9, -8(%rbp)
	jle	.L3
	movl	$0, -4(%rbp)
	jmp	.L4
.L5:
	movl	-4(%rbp), %eax
	addl	$97, %eax
	movb	%al, -9(%rbp)
	movsbl	-9(%rbp), %eax
	movl	%eax, %edi
	call	putchar@PLT
	addl	$1, -4(%rbp)
.L4:
	cmpl	$5, -4(%rbp)
	jle	.L5
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
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
