	.file	"100-times_table.c"
	.text
	.section	.rodata
.LC0:
	.string	", "
.LC1:
	.string	"  %d"
.LC2:
	.string	" %d"
.LC3:
	.string	"%d"
	.text
	.globl	print_times_table
	.type	print_times_table, @function
print_times_table:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	js	.L13
	cmpl	$15, -20(%rbp)
	jg	.L13
	movl	$0, -12(%rbp)
	jmp	.L5
.L12:
	movl	$0, -8(%rbp)
	jmp	.L6
.L11:
	movl	-12(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -8(%rbp)
	jle	.L7
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L7:
	cmpl	$9, -4(%rbp)
	jg	.L8
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L9
.L8:
	cmpl	$99, -4(%rbp)
	jg	.L10
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L9
.L10:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L9:
	addl	$1, -8(%rbp)
.L6:
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L11
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -12(%rbp)
.L5:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L12
	jmp	.L1
.L13:
	nop
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	print_times_table, .-print_times_table
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$9, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	print_times_table
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
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
