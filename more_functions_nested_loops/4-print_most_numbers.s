	.file	"4-print_most_numbers.c"
	.text
	.globl	print_most_numbers
	.type	print_most_numbers, @function
print_most_numbers:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$48, -4(%rbp)
	jmp	.L2
.L4:
	cmpl	$50, -4(%rbp)
	je	.L3
	cmpl	$52, -4(%rbp)
	je	.L3
	movl	-4(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	_putchar@PLT
.L3:
	addl	$1, -4(%rbp)
.L2:
	cmpl	$57, -4(%rbp)
	jle	.L4
	movl	$10, %edi
	call	_putchar@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	print_most_numbers, .-print_most_numbers
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
