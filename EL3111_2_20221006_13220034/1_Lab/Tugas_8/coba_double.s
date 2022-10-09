	.file	"coba_double.c"
	.text
	.globl	coba
	.def	coba;	.scl	2;	.type	32;	.endef
	.seh_proc	coba
coba:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-8(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	cvttsd2sil	%xmm0, %edx
	movq	24(%rbp), %rax
	movl	%edx, (%rax)
	movsd	-16(%rbp), %xmm0
	cvttsd2sil	%xmm0, %edx
	movq	32(%rbp), %rax
	movl	%edx, (%rax)
	movsd	-24(%rbp), %xmm0
	cvttsd2sil	%xmm0, %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (Rev9, Built by MSYS2 project) 11.2.0"
