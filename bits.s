	.file	"bits.c"
	.text
	.globl	absVal
	.type	absVal, @function
absVal:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	sarl	$31, %eax
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	xorl	-4(%rbp), %eax
	subl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	absVal, .-absVal
	.globl	addOK
	.type	addOK, @function
addOK:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-20(%rbp), %eax
	sarl	$31, %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	sarl	$31, %eax
	movl	%eax, -8(%rbp)
	movl	-16(%rbp), %eax
	sarl	$31, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	orl	-8(%rbp), %eax
	movl	%eax, %edx
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	orl	%eax, %edx
	cmpl	$0, -12(%rbp)
	sete	%cl
	cmpl	$0, -8(%rbp)
	sete	%al
	orl	%ecx, %eax
	movzbl	%al, %eax
	orl	-4(%rbp), %eax
	andl	%edx, %eax
	andl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	addOK, .-addOK
	.globl	allEvenBits
	.type	allEvenBits, @function
allEvenBits:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$170, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$16, %eax
	orl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$8, %eax
	orl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	orl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	andl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	allEvenBits, .-allEvenBits
	.globl	allOddBits
	.type	allOddBits, @function
allOddBits:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$85, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$16, %eax
	orl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$8, %eax
	orl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	orl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	andl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	allOddBits, .-allOddBits
	.globl	anyEvenBit
	.type	anyEvenBit, @function
anyEvenBit:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$85, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$16, %eax
	orl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$8, %eax
	orl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	andl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	anyEvenBit, .-anyEvenBit
	.globl	anyOddBit
	.type	anyOddBit, @function
anyOddBit:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$170, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$16, %eax
	orl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$8, %eax
	orl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	andl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	anyOddBit, .-anyOddBit
	.globl	bang
	.type	bang, @function
bang:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$16, %eax
	orl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$8, %eax
	orl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$4, %eax
	orl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$2, %eax
	orl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	%eax
	orl	%eax, -4(%rbp)
	notl	-4(%rbp)
	movl	-4(%rbp), %eax
	andl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	bang, .-bang
	.globl	bitAnd
	.type	bitAnd, @function
bitAnd:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	andl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	bitAnd, .-bitAnd
	.globl	bitCount
	.type	bitCount, @function
bitCount:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)
	movl	$85, -28(%rbp)
	movl	-28(%rbp), %eax
	sall	$16, %eax
	orl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	sall	$8, %eax
	orl	%eax, -28(%rbp)
	movl	$51, -24(%rbp)
	movl	-24(%rbp), %eax
	sall	$16, %eax
	orl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	sall	$8, %eax
	orl	%eax, -24(%rbp)
	movl	$15, -20(%rbp)
	movl	-20(%rbp), %eax
	sall	$16, %eax
	orl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	sall	$8, %eax
	orl	%eax, -20(%rbp)
	movl	$255, -16(%rbp)
	movl	-16(%rbp), %eax
	sall	$16, %eax
	orl	%eax, -16(%rbp)
	movl	$255, -12(%rbp)
	movl	-12(%rbp), %eax
	sall	$8, %eax
	orl	%eax, -12(%rbp)
	movl	-36(%rbp), %eax
	andl	-28(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-36(%rbp), %eax
	sarl	%eax
	andl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	andl	-24(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-36(%rbp), %eax
	sarl	$2, %eax
	andl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	andl	-20(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-36(%rbp), %eax
	sarl	$4, %eax
	andl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	andl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-36(%rbp), %eax
	sarl	$8, %eax
	andl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	andl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-36(%rbp), %eax
	sarl	$16, %eax
	andl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	bitCount, .-bitCount
	.globl	bitMask
	.type	bitMask, @function
bitMask:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	$31, %eax
	subl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	movl	$-2, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	notl	%eax
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	movl	$-2147483648, %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	bitMask, .-bitMask
	.globl	bitMatch
	.type	bitMatch, @function
bitMatch:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	orl	-8(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	andl	-8(%rbp), %eax
	notl	%eax
	andl	%edx, %eax
	notl	%eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	bitMatch, .-bitMatch
	.globl	bitNor
	.type	bitNor, @function
bitNor:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	orl	-8(%rbp), %eax
	notl	%eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	bitNor, .-bitNor
	.globl	bitOr
	.type	bitOr, @function
bitOr:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	orl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	bitOr, .-bitOr
	.globl	bitParity
	.type	bitParity, @function
bitParity:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$16, %eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$8, %eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$4, %eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$2, %eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	%eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	bitParity, .-bitParity
	.globl	bitReverse
	.type	bitReverse, @function
bitReverse:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)
	movl	$85, -20(%rbp)
	movl	-20(%rbp), %eax
	sall	$16, %eax
	orl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	sall	$8, %eax
	orl	%eax, -20(%rbp)
	movl	$51, -16(%rbp)
	movl	-16(%rbp), %eax
	sall	$16, %eax
	orl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	sall	$8, %eax
	orl	%eax, -16(%rbp)
	movl	$15, -12(%rbp)
	movl	-12(%rbp), %eax
	sall	$16, %eax
	orl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	sall	$8, %eax
	orl	%eax, -12(%rbp)
	movl	$255, -8(%rbp)
	movl	-8(%rbp), %eax
	sall	$16, %eax
	orl	%eax, -8(%rbp)
	movl	$255, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$8, %eax
	orl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	notl	%eax
	andl	-36(%rbp), %eax
	sarl	$16, %eax
	andl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	andl	-4(%rbp), %eax
	sall	$16, %eax
	orl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-8(%rbp), %eax
	notl	%eax
	andl	-36(%rbp), %eax
	sarl	$8, %eax
	andl	-8(%rbp), %eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	andl	-8(%rbp), %eax
	sall	$8, %eax
	orl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-12(%rbp), %eax
	notl	%eax
	andl	-36(%rbp), %eax
	sarl	$4, %eax
	andl	-12(%rbp), %eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	andl	-12(%rbp), %eax
	sall	$4, %eax
	orl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-16(%rbp), %eax
	notl	%eax
	andl	-36(%rbp), %eax
	sarl	$2, %eax
	andl	-16(%rbp), %eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	andl	-16(%rbp), %eax
	sall	$2, %eax
	orl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-20(%rbp), %eax
	notl	%eax
	andl	-36(%rbp), %eax
	sarl	%eax
	andl	-20(%rbp), %eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	andl	-20(%rbp), %eax
	addl	%eax, %eax
	orl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	bitReverse, .-bitReverse
	.globl	bitXor
	.type	bitXor, @function
bitXor:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	orl	-8(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	andl	-8(%rbp), %eax
	notl	%eax
	andl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	bitXor, .-bitXor
	.globl	byteSwap
	.type	byteSwap, @function
byteSwap:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	-24(%rbp), %eax
	sall	$3, %eax
	movl	$255, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-28(%rbp), %eax
	sall	$3, %eax
	movl	$255, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	andl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-20(%rbp), %eax
	andl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %eax
	sall	$3, %eax
	movl	-4(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	-24(%rbp), %eax
	sall	$3, %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %eax
	sall	$3, %eax
	movl	-8(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	-28(%rbp), %eax
	sall	$3, %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-16(%rbp), %eax
	andl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	andl	%eax, -8(%rbp)
	movl	-16(%rbp), %eax
	notl	%eax
	andl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	notl	%eax
	andl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	orl	-4(%rbp), %eax
	orl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	byteSwap, .-byteSwap
	.globl	conditional
	.type	conditional, @function
conditional:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$31, %eax
	sarl	$31, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	-8(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	notl	%eax
	andl	-12(%rbp), %eax
	orl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	conditional, .-conditional
	.globl	countLeadingZero
	.type	countLeadingZero, @function
countLeadingZero:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	sarl	$16, %eax
	orl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	sarl	$8, %eax
	orl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	sarl	$4, %eax
	orl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	sarl	$2, %eax
	orl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	sarl	%eax
	orl	%eax, -36(%rbp)
	notl	-36(%rbp)
	movl	$85, -28(%rbp)
	movl	-28(%rbp), %eax
	sall	$16, %eax
	orl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	sall	$8, %eax
	orl	%eax, -28(%rbp)
	movl	$51, -24(%rbp)
	movl	-24(%rbp), %eax
	sall	$16, %eax
	orl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	sall	$8, %eax
	orl	%eax, -24(%rbp)
	movl	$15, -20(%rbp)
	movl	-20(%rbp), %eax
	sall	$16, %eax
	orl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	sall	$8, %eax
	orl	%eax, -20(%rbp)
	movl	$255, -16(%rbp)
	movl	-16(%rbp), %eax
	sall	$16, %eax
	orl	%eax, -16(%rbp)
	movl	$255, -12(%rbp)
	movl	-12(%rbp), %eax
	sall	$8, %eax
	orl	%eax, -12(%rbp)
	movl	-36(%rbp), %eax
	andl	-28(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-36(%rbp), %eax
	sarl	%eax
	andl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	andl	-24(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-36(%rbp), %eax
	sarl	$2, %eax
	andl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	andl	-20(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-36(%rbp), %eax
	sarl	$4, %eax
	andl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	andl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-36(%rbp), %eax
	sarl	$8, %eax
	andl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	andl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-36(%rbp), %eax
	sarl	$16, %eax
	andl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	countLeadingZero, .-countLeadingZero
	.globl	copyLSB
	.type	copyLSB, @function
copyLSB:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$31, %eax
	sarl	$31, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	copyLSB, .-copyLSB
	.globl	distinctNegation
	.type	distinctNegation, @function
distinctNegation:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	sall	-4(%rbp)
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	distinctNegation, .-distinctNegation
	.globl	dividePower2
	.type	dividePower2, @function
dividePower2:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	-20(%rbp), %eax
	sarl	$31, %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	movl	$-1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	notl	%eax
	movl	%eax, -8(%rbp)
	movl	-20(%rbp), %eax
	andl	-8(%rbp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	-4(%rbp), %eax
	notl	%eax
	andl	-12(%rbp), %eax
	andl	$1, %eax
	addl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	dividePower2, .-dividePower2
	.globl	evenBits
	.type	evenBits, @function
evenBits:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$85, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$16, %eax
	orl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$8, %eax
	orl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	evenBits, .-evenBits
	.globl	ezThreeFourths
	.type	ezThreeFourths, @function
ezThreeFourths:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	sarl	$31, %eax
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	notl	%eax
	andl	-8(%rbp), %eax
	andl	$1, %eax
	addl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	ezThreeFourths, .-ezThreeFourths
	.globl	fitsBits
	.type	fitsBits, @function
fitsBits:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$32, %eax
	subl	-24(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	fitsBits, .-fitsBits
	.globl	fitsShort
	.type	fitsShort, @function
fitsShort:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$16, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	fitsShort, .-fitsShort
	.globl	floatAbsVal
	.type	floatAbsVal, @function
floatAbsVal:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)
	movl	$-2139095041, -20(%rbp)
	movl	$2147483647, -16(%rbp)
	movl	-16(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	orl	-36(%rbp), %eax
	cmpl	$-1, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	andl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L54
	cmpl	$0, -4(%rbp)
	je	.L54
	movl	-36(%rbp), %eax
	jmp	.L55
.L54:
	movl	-16(%rbp), %eax
	andl	-36(%rbp), %eax
.L55:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	floatAbsVal, .-floatAbsVal
	.globl	floatFloat2Int
	.type	floatFloat2Int, @function
floatFloat2Int:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	floatFloat2Int, .-floatFloat2Int
	.globl	floatInt2Float
	.type	floatInt2Float, @function
floatInt2Float:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	floatInt2Float, .-floatInt2Float
	.globl	floatIsEqual
	.type	floatIsEqual, @function
floatIsEqual:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	floatIsEqual, .-floatIsEqual
	.globl	floatIsLess
	.type	floatIsLess, @function
floatIsLess:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	floatIsLess, .-floatIsLess
	.globl	floatNegate
	.type	floatNegate, @function
floatNegate:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	floatNegate, .-floatNegate
	.globl	floatPower2
	.type	floatPower2, @function
floatPower2:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	floatPower2, .-floatPower2
	.globl	floatScale1d2
	.type	floatScale1d2, @function
floatScale1d2:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	floatScale1d2, .-floatScale1d2
	.globl	floatScale2
	.type	floatScale2, @function
floatScale2:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	floatScale2, .-floatScale2
	.globl	floatScale64
	.type	floatScale64, @function
floatScale64:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	floatScale64, .-floatScale64
	.globl	floatUnsigned2Float
	.type	floatUnsigned2Float, @function
floatUnsigned2Float:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	floatUnsigned2Float, .-floatUnsigned2Float
	.globl	getByte
	.type	getByte, @function
getByte:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	getByte, .-getByte
	.globl	greatestBitPos
	.type	greatestBitPos, @function
greatestBitPos:
.LFB38:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	greatestBitPos, .-greatestBitPos
	.globl	howManyBits
	.type	howManyBits, @function
howManyBits:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	howManyBits, .-howManyBits
	.globl	implication
	.type	implication, @function
implication:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	implication, .-implication
	.globl	intLog2
	.type	intLog2, @function
intLog2:
.LFB41:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	intLog2, .-intLog2
	.globl	isAsciiDigit
	.type	isAsciiDigit, @function
isAsciiDigit:
.LFB42:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	isAsciiDigit, .-isAsciiDigit
	.globl	isEqual
	.type	isEqual, @function
isEqual:
.LFB43:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	isEqual, .-isEqual
	.globl	isGreater
	.type	isGreater, @function
isGreater:
.LFB44:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	isGreater, .-isGreater
	.globl	isLess
	.type	isLess, @function
isLess:
.LFB45:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	isLess, .-isLess
	.globl	isLessOrEqual
	.type	isLessOrEqual, @function
isLessOrEqual:
.LFB46:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	isLessOrEqual, .-isLessOrEqual
	.globl	isNegative
	.type	isNegative, @function
isNegative:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	isNegative, .-isNegative
	.globl	isNonNegative
	.type	isNonNegative, @function
isNonNegative:
.LFB48:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	isNonNegative, .-isNonNegative
	.globl	isNonZero
	.type	isNonZero, @function
isNonZero:
.LFB49:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	isNonZero, .-isNonZero
	.globl	isNotEqual
	.type	isNotEqual, @function
isNotEqual:
.LFB50:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	isNotEqual, .-isNotEqual
	.globl	isPallindrome
	.type	isPallindrome, @function
isPallindrome:
.LFB51:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	isPallindrome, .-isPallindrome
	.globl	isPositive
	.type	isPositive, @function
isPositive:
.LFB52:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	isPositive, .-isPositive
	.globl	isPower2
	.type	isPower2, @function
isPower2:
.LFB53:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	isPower2, .-isPower2
	.globl	isTmax
	.type	isTmax, @function
isTmax:
.LFB54:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	isTmax, .-isTmax
	.globl	isTmin
	.type	isTmin, @function
isTmin:
.LFB55:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	isTmin, .-isTmin
	.globl	isZero
	.type	isZero, @function
isZero:
.LFB56:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	isZero, .-isZero
	.globl	leastBitPos
	.type	leastBitPos, @function
leastBitPos:
.LFB57:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	leastBitPos, .-leastBitPos
	.globl	leftBitCount
	.type	leftBitCount, @function
leftBitCount:
.LFB58:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	leftBitCount, .-leftBitCount
	.globl	logicalNeg
	.type	logicalNeg, @function
logicalNeg:
.LFB59:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	logicalNeg, .-logicalNeg
	.globl	logicalShift
	.type	logicalShift, @function
logicalShift:
.LFB60:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	logicalShift, .-logicalShift
	.globl	maximumOfTwo
	.type	maximumOfTwo, @function
maximumOfTwo:
.LFB61:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	maximumOfTwo, .-maximumOfTwo
	.globl	minimumOfTwo
	.type	minimumOfTwo, @function
minimumOfTwo:
.LFB62:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	minimumOfTwo, .-minimumOfTwo
	.globl	minusOne
	.type	minusOne, @function
minusOne:
.LFB63:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	minusOne, .-minusOne
	.globl	multFiveEighths
	.type	multFiveEighths, @function
multFiveEighths:
.LFB64:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	multFiveEighths, .-multFiveEighths
	.globl	negate
	.type	negate, @function
negate:
.LFB65:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	negate, .-negate
	.globl	oddBits
	.type	oddBits, @function
oddBits:
.LFB66:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	oddBits, .-oddBits
	.globl	remainderPower2
	.type	remainderPower2, @function
remainderPower2:
.LFB67:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	remainderPower2, .-remainderPower2
	.globl	replaceByte
	.type	replaceByte, @function
replaceByte:
.LFB68:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	replaceByte, .-replaceByte
	.globl	rotateLeft
	.type	rotateLeft, @function
rotateLeft:
.LFB69:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	rotateLeft, .-rotateLeft
	.globl	rotateRight
	.type	rotateRight, @function
rotateRight:
.LFB70:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	rotateRight, .-rotateRight
	.globl	satAdd
	.type	satAdd, @function
satAdd:
.LFB71:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	satAdd, .-satAdd
	.globl	satMul2
	.type	satMul2, @function
satMul2:
.LFB72:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	satMul2, .-satMul2
	.globl	satMul3
	.type	satMul3, @function
satMul3:
.LFB73:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	satMul3, .-satMul3
	.globl	sign
	.type	sign, @function
sign:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	sign, .-sign
	.globl	signMag2TwosComp
	.type	signMag2TwosComp, @function
signMag2TwosComp:
.LFB75:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	signMag2TwosComp, .-signMag2TwosComp
	.globl	specialBits
	.type	specialBits, @function
specialBits:
.LFB76:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	specialBits, .-specialBits
	.globl	subtractionOK
	.type	subtractionOK, @function
subtractionOK:
.LFB77:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	subtractionOK, .-subtractionOK
	.globl	thirdBits
	.type	thirdBits, @function
thirdBits:
.LFB78:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	thirdBits, .-thirdBits
	.globl	tmax
	.type	tmax, @function
tmax:
.LFB79:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	tmax, .-tmax
	.globl	tmin
	.type	tmin, @function
tmin:
.LFB80:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	tmin, .-tmin
	.globl	trueFiveEighths
	.type	trueFiveEighths, @function
trueFiveEighths:
.LFB81:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	trueFiveEighths, .-trueFiveEighths
	.globl	trueThreeFourths
	.type	trueThreeFourths, @function
trueThreeFourths:
.LFB82:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	trueThreeFourths, .-trueThreeFourths
	.globl	twosComp2SignMag
	.type	twosComp2SignMag, @function
twosComp2SignMag:
.LFB83:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	twosComp2SignMag, .-twosComp2SignMag
	.globl	upperBits
	.type	upperBits, @function
upperBits:
.LFB84:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	upperBits, .-upperBits
	.ident	"GCC: (Ubuntu 5.5.0-12ubuntu1~16.04) 5.5.0 20171010"
	.section	.note.GNU-stack,"",@progbits
