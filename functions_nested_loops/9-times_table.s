	.file	"9-times_table.c"
	.text
	.globl	times_table
	.type	times_table, @function
times_table:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -12(%rbp)
	jmp	.L2
.L9:
	movl	$0, -8(%rbp)
	jmp	.L3
.L8:
	movl	-12(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$9, %eax
	cmpl	$18, %eax
	ja	.L4
	cmpl	$0, -8(%rbp)
	jne	.L5
	movl	$48, %edi
	call	_putchar@PLT
.L5:
	cmpl	$0, -8(%rbp)
	je	.L6
	movl	$32, %edi
	call	_putchar@PLT
	movl	-4(%rbp), %edx
	movslq	%edx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	sarl	$2, %eax
	movl	%edx, %esi
	sarl	$31, %esi
	subl	%esi, %eax
	movl	%eax, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	%eax, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$48, %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	_putchar@PLT
.L6:
	cmpl	$8, -8(%rbp)
	jg	.L7
	movl	$44, %edi
	call	_putchar@PLT
	movl	$32, %edi
	call	_putchar@PLT
	jmp	.L7
.L4:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$2, %edx
	sarl	$31, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	addl	$48, %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	_putchar@PLT
	movl	-4(%rbp), %edx
	movslq	%edx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	sarl	$2, %eax
	movl	%edx, %esi
	sarl	$31, %esi
	subl	%esi, %eax
	movl	%eax, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	%eax, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$48, %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	_putchar@PLT
	cmpl	$8, -8(%rbp)
	jg	.L7
	movl	$44, %edi
	call	_putchar@PLT
	movl	$32, %edi
	call	_putchar@PLT
.L7:
	addl	$1, -8(%rbp)
.L3:
	cmpl	$9, -8(%rbp)
	jle	.L8
	movl	$10, %edi
	call	_putchar@PLT
	addl	$1, -12(%rbp)
.L2:
	cmpl	$9, -12(%rbp)
	jle	.L9
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	times_table, .-times_table
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
