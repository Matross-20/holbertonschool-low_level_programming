	.file	"10-print_triangle.c"
	.text
	.globl	print_triangle
	.type	print_triangle, @function
print_triangle:
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
	movl	$0, -12(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L2
	jmp	.L3
.L8:
	movl	$0, -8(%rbp)
	jmp	.L4
.L7:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.L5
	movl	$32, %edi
	call	_putchar@PLT
	jmp	.L6
.L5:
	movl	$35, %edi
	call	_putchar@PLT
.L6:
	addl	$1, -8(%rbp)
.L4:
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L7
	subl	$1, -4(%rbp)
	movl	$10, %edi
	call	_putchar@PLT
	addl	$1, -12(%rbp)
.L3:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L8
	jmp	.L10
.L2:
	movl	$10, %edi
	call	_putchar@PLT
.L10:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	print_triangle, .-print_triangle
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
