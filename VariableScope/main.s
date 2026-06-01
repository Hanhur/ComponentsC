	.file	"main.c"
	.intel_syntax noprefix
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	res, 4, 2
	.globl	str1
	.bss
	.align 16
str1:
	.space 30
	.comm	yf, 4, 2
	.comm	zf, 4, 2
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC3:
	.ascii "Value is %.5f\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB16:
	.file 1 "main.c"
	.loc 1 9 1
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	.loc 1 9 1
	call	__main
.LVL0:
	.loc 1 25 11
	movss	xmm0, DWORD PTR .LC0[rip]
	movss	DWORD PTR -4[rbp], xmm0
	.loc 1 26 8
	lea	rax, yf[rip]
	movss	xmm0, DWORD PTR .LC1[rip]
	movss	DWORD PTR [rax], xmm0
	.loc 1 27 8
	lea	rax, zf[rip]
	movss	xmm0, DWORD PTR .LC2[rip]
	movss	DWORD PTR [rax], xmm0
	.loc 1 28 25
	lea	rax, yf[rip]
	movss	xmm1, DWORD PTR [rax]
	lea	rax, zf[rip]
	movss	xmm0, DWORD PTR [rax]
	mulss	xmm0, xmm1
	.loc 1 28 11
	movss	xmm1, DWORD PTR -4[rbp]
	addss	xmm0, xmm1
	movss	DWORD PTR -8[rbp], xmm0
	.loc 1 29 5
	cvtss2sd	xmm0, DWORD PTR -8[rbp]
	movq	rax, xmm0
	mov	rdx, rax
	mov	QWORD PTR -24[rbp], rdx
	movsd	xmm0, QWORD PTR -24[rbp]
	movapd	xmm1, xmm0
	mov	rdx, rax
	lea	rcx, .LC3[rip]
	call	printf
	.loc 1 30 19
	lea	rax, yf[rip]
	movss	xmm0, DWORD PTR [rax]
	lea	rax, zf[rip]
	movss	xmm1, DWORD PTR [rax]
	divss	xmm0, xmm1
	movaps	xmm1, xmm0
	.loc 1 30 9
	movss	xmm0, DWORD PTR -4[rbp]
	subss	xmm0, xmm1
	movss	DWORD PTR -8[rbp], xmm0
	.loc 1 31 5
	cvtss2sd	xmm0, DWORD PTR -8[rbp]
	movq	rax, xmm0
	mov	rdx, rax
	mov	QWORD PTR -24[rbp], rdx
	movsd	xmm0, QWORD PTR -24[rbp]
	movapd	xmm1, xmm0
	mov	rdx, rax
	lea	rcx, .LC3[rip]
	call	printf
	.loc 1 68 12
	mov	eax, 0
	.loc 1 69 1
	add	rsp, 64
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.seh_endproc
	.section .rdata,"dr"
.LC4:
	.ascii "%s %.5f\12\0"
	.text
	.globl	print_res
	.def	print_res;	.scl	2;	.type	32;	.endef
	.seh_proc	print_res
print_res:
.LFB17:
	.loc 1 72 1
	.cfi_startproc
	push	rbp
	.seh_pushreg	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.cfi_def_cfa_register 6
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	.loc 1 73 5
	lea	rax, res[rip]
	movss	xmm0, DWORD PTR [rax]
	cvtss2sd	xmm0, xmm0
	movq	rax, xmm0
	mov	rdx, rax
	mov	QWORD PTR -8[rbp], rdx
	movsd	xmm1, QWORD PTR -8[rbp]
	mov	QWORD PTR -8[rbp], rax
	movsd	xmm0, QWORD PTR -8[rbp]
	movapd	xmm2, xmm1
	movq	r8, xmm0
	mov	rdx, QWORD PTR 16[rbp]
	lea	rcx, .LC4[rip]
	call	printf
	.loc 1 74 1
	nop
	add	rsp, 48
	pop	rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC0:
	.long	1090519040
	.align 4
.LC1:
	.long	1077936128
	.align 4
.LC2:
	.long	1073741824
	.text
.Letext0:
	.file 2 "c:/mingw/x86_64-w64-mingw32/include/stdlib.h"
	.file 3 "c:/mingw/x86_64-w64-mingw32/include/malloc.h"
	.file 4 "c:/mingw/x86_64-w64-mingw32/include/crtdefs.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x3ce
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C17 8.4.0 -masm=intel -mtune=generic -march=x86-64 -g3\0"
	.byte	0xc
	.ascii "main.c\0"
	.ascii "D:\\ComponentsC\\VariableScope\0"
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.secrel32	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x3
	.ascii "wchar_t\0"
	.byte	0x4
	.byte	0x62
	.byte	0x18
	.long	0xc7
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x4
	.byte	0x8
	.long	0x84
	.uleb128 0x4
	.byte	0x8
	.long	0xb7
	.uleb128 0x4
	.byte	0x8
	.long	0xdd
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x5
	.ascii "__imp___mb_cur_max\0"
	.byte	0x2
	.byte	0x73
	.byte	0x10
	.long	0xfc
	.uleb128 0x6
	.long	0xf0
	.long	0x185
	.uleb128 0x7
	.long	0x8c
	.byte	0
	.byte	0
	.uleb128 0x5
	.ascii "_sys_errlist\0"
	.byte	0x2
	.byte	0xac
	.byte	0x26
	.long	0x175
	.uleb128 0x5
	.ascii "_sys_nerr\0"
	.byte	0x2
	.byte	0xad
	.byte	0x24
	.long	0xdd
	.uleb128 0x8
	.ascii "__imp___argc\0"
	.byte	0x2
	.word	0x119
	.byte	0x10
	.long	0xfc
	.uleb128 0x8
	.ascii "__imp___argv\0"
	.byte	0x2
	.word	0x11d
	.byte	0x13
	.long	0x1d8
	.uleb128 0x4
	.byte	0x8
	.long	0x1de
	.uleb128 0x4
	.byte	0x8
	.long	0xf0
	.uleb128 0x8
	.ascii "__imp___wargv\0"
	.byte	0x2
	.word	0x121
	.byte	0x16
	.long	0x1fb
	.uleb128 0x4
	.byte	0x8
	.long	0x201
	.uleb128 0x4
	.byte	0x8
	.long	0xf6
	.uleb128 0x8
	.ascii "__imp__environ\0"
	.byte	0x2
	.word	0x127
	.byte	0x13
	.long	0x1d8
	.uleb128 0x8
	.ascii "__imp__wenviron\0"
	.byte	0x2
	.word	0x12c
	.byte	0x16
	.long	0x1fb
	.uleb128 0x8
	.ascii "__imp__pgmptr\0"
	.byte	0x2
	.word	0x132
	.byte	0x12
	.long	0x1de
	.uleb128 0x8
	.ascii "__imp__wpgmptr\0"
	.byte	0x2
	.word	0x137
	.byte	0x15
	.long	0x201
	.uleb128 0x8
	.ascii "__imp__osplatform\0"
	.byte	0x2
	.word	0x13c
	.byte	0x19
	.long	0x282
	.uleb128 0x4
	.byte	0x8
	.long	0x102
	.uleb128 0x8
	.ascii "__imp__osver\0"
	.byte	0x2
	.word	0x141
	.byte	0x19
	.long	0x282
	.uleb128 0x8
	.ascii "__imp__winver\0"
	.byte	0x2
	.word	0x146
	.byte	0x19
	.long	0x282
	.uleb128 0x8
	.ascii "__imp__winmajor\0"
	.byte	0x2
	.word	0x14b
	.byte	0x19
	.long	0x282
	.uleb128 0x8
	.ascii "__imp__winminor\0"
	.byte	0x2
	.word	0x150
	.byte	0x19
	.long	0x282
	.uleb128 0x5
	.ascii "_amblksiz\0"
	.byte	0x3
	.byte	0x35
	.byte	0x17
	.long	0x102
	.uleb128 0x9
	.ascii "res\0"
	.byte	0x1
	.byte	0x2
	.byte	0x7
	.long	0x142
	.uleb128 0x9
	.byte	0x3
	.quad	res
	.uleb128 0x6
	.long	0x84
	.long	0x31f
	.uleb128 0x7
	.long	0x8c
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.ascii "str1\0"
	.byte	0x1
	.byte	0x3
	.byte	0x6
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	str1
	.uleb128 0x9
	.ascii "yf\0"
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.long	0x142
	.uleb128 0x9
	.byte	0x3
	.quad	yf
	.uleb128 0x9
	.ascii "zf\0"
	.byte	0x1
	.byte	0x4
	.byte	0xb
	.long	0x142
	.uleb128 0x9
	.byte	0x3
	.quad	zf
	.uleb128 0xa
	.ascii "print_res\0"
	.byte	0x1
	.byte	0x47
	.byte	0x6
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x394
	.uleb128 0xb
	.ascii "str\0"
	.byte	0x1
	.byte	0x47
	.byte	0x15
	.long	0xf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.ascii "main\0"
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.long	0xdd
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.ascii "xf\0"
	.byte	0x1
	.byte	0x19
	.byte	0xb
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.ascii "res\0"
	.byte	0x1
	.byte	0x1c
	.byte	0xb
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x2c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_macro,"dr"
.Ldebug_macro0:
	.word	0x4
	.byte	0x2
	.secrel32	.Ldebug_line0
	.byte	0x1
	.uleb128 0
	.ascii "__STDC__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STDC_VERSION__ 201710L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STDC_UTF_16__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STDC_UTF_32__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STDC_HOSTED__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_MINOR__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_PATCHLEVEL__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__VERSION__ \"8.4.0\"\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_RELAXED 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_SEQ_CST 5\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_ACQUIRE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_RELEASE 3\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_ACQ_REL 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_CONSUME 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__pic__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PIC__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FINITE_MATH_ONLY__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_INT__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_LONG__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_LONG_LONG__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_SHORT__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_FLOAT__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_DOUBLE__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_LONG_DOUBLE__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_SIZE_T__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__CHAR_BIT__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BIGGEST_ALIGNMENT__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ORDER_LITTLE_ENDIAN__ 1234\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ORDER_BIG_ENDIAN__ 4321\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ORDER_PDP_ENDIAN__ 3412\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_POINTER__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZE_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PTRDIFF_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__CHAR16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__CHAR32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST64_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST64_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST64_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST64_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTPTR_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTPTR_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__has_include(STR) __has_include__(STR)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__has_include_next(STR) __has_include_next__(STR)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GXX_ABI_VERSION 1013\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SCHAR_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SHRT_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_MAX__ 0x7fffffffL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_LONG_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_MIN__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_MIN__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PTRDIFF_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZE_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SCHAR_WIDTH__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SHRT_WIDTH__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_LONG_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_WIDTH__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_WIDTH__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PTRDIFF_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZE_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_C(c) c ## LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_C(c) c ## ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST8_WIDTH__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST16_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST16_WIDTH__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST32_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST32_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_C(c) c ## LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST64_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST16_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST32_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_C(c) c ## U\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_C(c) c ## ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST8_WIDTH__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST16_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST16_WIDTH__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST32_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST32_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST64_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST64_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST16_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST32_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST64_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTPTR_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTPTR_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTPTR_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_IEC_559 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_IEC_559_COMPLEX 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_EVAL_METHOD__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_EVAL_METHOD_TS_18661_3__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC_EVAL_METHOD__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_RADIX__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MANT_DIG__ 24\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_DIG__ 6\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MIN_EXP__ (-125)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MIN_10_EXP__ (-37)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MAX_EXP__ 128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MAX_10_EXP__ 38\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_DECIMAL_DIG__ 9\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MAX__ 3.40282346638528859811704183484516925e+38F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MIN__ 1.17549435082228750796873653722224568e-38F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MANT_DIG__ 53\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_DIG__ 15\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MIN_EXP__ (-1021)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MIN_10_EXP__ (-307)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MAX_EXP__ 1024\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MAX_10_EXP__ 308\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_DECIMAL_DIG__ 17\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MANT_DIG__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_DIG__ 18\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MIN_EXP__ (-16381)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MIN_10_EXP__ (-4931)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MAX_EXP__ 16384\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MAX_10_EXP__ 4932\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DECIMAL_DIG__ 21\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_DECIMAL_DIG__ 21\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MANT_DIG__ 24\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_DIG__ 6\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MIN_EXP__ (-125)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MIN_10_EXP__ (-37)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MAX_EXP__ 128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MAX_10_EXP__ 38\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_DECIMAL_DIG__ 9\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MANT_DIG__ 53\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_DIG__ 15\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MIN_EXP__ (-1021)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MIN_10_EXP__ (-307)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MAX_EXP__ 1024\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MAX_10_EXP__ 308\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_DECIMAL_DIG__ 17\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MANT_DIG__ 113\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_DIG__ 33\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MIN_EXP__ (-16381)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MIN_10_EXP__ (-4931)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MAX_EXP__ 16384\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MAX_10_EXP__ 4932\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_DECIMAL_DIG__ 36\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MANT_DIG__ 53\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_DIG__ 15\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MIN_EXP__ (-1021)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MIN_10_EXP__ (-307)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MAX_EXP__ 1024\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MAX_10_EXP__ 308\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_DECIMAL_DIG__ 17\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MANT_DIG__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_DIG__ 18\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MIN_EXP__ (-16381)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MIN_10_EXP__ (-4931)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MAX_EXP__ 16384\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MAX_10_EXP__ 4932\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_DECIMAL_DIG__ 21\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MANT_DIG__ 7\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MIN_EXP__ (-94)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MAX_EXP__ 97\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MIN__ 1E-95DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MAX__ 9.999999E96DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_EPSILON__ 1E-6DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MANT_DIG__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MIN_EXP__ (-382)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MAX_EXP__ 385\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MIN__ 1E-383DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MAX__ 9.999999999999999E384DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_EPSILON__ 1E-15DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MANT_DIG__ 34\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MIN_EXP__ (-6142)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MAX_EXP__ 6145\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MIN__ 1E-6143DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_EPSILON__ 1E-33DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__REGISTER_PREFIX__ \0"
	.byte	0x1
	.uleb128 0
	.ascii "__USER_LABEL_PREFIX__ \0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_STDC_INLINE__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__NO_INLINE__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_BOOL_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_CHAR_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_SHORT_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_INT_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_LONG_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_LLONG_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_POINTER_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_DWARF2_CFI_ASM 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PRAGMA_REDEFINE_EXTNAME 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_INT128__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_WCHAR_T__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_WINT_T__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_PTRDIFF_T__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__amd64 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__amd64__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__x86_64 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__x86_64__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_FLOAT80__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_FLOAT128__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_HLE_ACQUIRE 65536\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_HLE_RELEASE 131072\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ASM_FLAG_OUTPUTS__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__k8 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__k8__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__code_model_medium__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__MMX__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SSE__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SSE2__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FXSR__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SSE_MATH__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SSE2_MATH__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SEG_FS 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SEG_GS 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SEH__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__stdcall __attribute__((__stdcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__fastcall __attribute__((__fastcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__thiscall __attribute__((__thiscall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__cdecl __attribute__((__cdecl__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "_stdcall __attribute__((__stdcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "_fastcall __attribute__((__fastcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "_thiscall __attribute__((__thiscall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "_cdecl __attribute__((__cdecl__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GXX_MERGED_TYPEINFO_NAMES 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GXX_TYPEINFO_EQUALITY_INLINE 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__MSVCRT__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__MINGW32__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "_WIN32 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WIN32 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WIN32__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "WIN32 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINNT 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINNT__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "WINNT 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "_INTEGRAL_MAX_BITS 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__MINGW64__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WIN64 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WIN64__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "WIN64 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "_WIN64 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__declspec(x) __attribute__((x))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DECIMAL_BID_FORMAT__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "_REENTRANT 1\0"
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.file 5 "main.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x2
	.ascii "MAIN_H_ \0"
	.file 6 "c:/mingw/x86_64-w64-mingw32/include/stdio.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_STDIO \0"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x8
	.ascii "_INC_CRTDEFS \0"
	.file 7 "c:/mingw/x86_64-w64-mingw32/include/_mingw.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x8
	.ascii "_INC__MINGW_H \0"
	.file 8 "c:/mingw/x86_64-w64-mingw32/include/_mingw_mac.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x8
	.ascii "_INC_CRTDEFS_MACRO \0"
	.byte	0x1
	.uleb128 0xa
	.ascii "__STRINGIFY(x) #x\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "__MINGW64_STRINGIFY(x) __STRINGIFY(x)\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "__MINGW64_VERSION_MAJOR 6\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "__MINGW64_VERSION_MINOR 0\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "__MINGW64_VERSION_BUGFIX 0\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "__MINGW64_VERSION_RC 0\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "__MINGW64_VERSION_STR __MINGW64_STRINGIFY(__MINGW64_VERSION_MAJOR) \".\" __MINGW64_STRINGIFY(__MINGW64_VERSION_MINOR) \".\" __MINGW64_STRINGIFY(__MINGW64_VERSION_BUGFIX)\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "__MINGW64_VERSION_STATE \"alpha\"\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "__MINGW32_MAJOR_VERSION 3\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "__MINGW32_MINOR_VERSION 11\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "_M_AMD64 100\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "_M_X64 100\0"
	.byte	0x2
	.uleb128 0x63
	.ascii "_\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "_ 1\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "__MINGW_USE_UNDERSCORE_PREFIX 0\0"
	.byte	0x2
	.uleb128 0x6a
	.ascii "_\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "__MINGW_IMP_SYMBOL(sym) __imp_ ##sym\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "__MINGW_IMP_LSYMBOL(sym) __imp_ ##sym\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "__MINGW_USYMBOL(sym) sym\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "__MINGW_LSYMBOL(sym) _ ##sym\0"
	.byte	0x2
	.uleb128 0x9a
	.ascii "__MINGW_EXTENSION\0"
	.byte	0x1
	.uleb128 0xa0
	.ascii "__MINGW_EXTENSION __extension__\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "__C89_NAMELESS __MINGW_EXTENSION\0"
	.byte	0x1
	.uleb128 0xa9
	.ascii "__C89_NAMELESSSTRUCTNAME \0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "__C89_NAMELESSSTRUCTNAME1 \0"
	.byte	0x1
	.uleb128 0xab
	.ascii "__C89_NAMELESSSTRUCTNAME2 \0"
	.byte	0x1
	.uleb128 0xac
	.ascii "__C89_NAMELESSSTRUCTNAME3 \0"
	.byte	0x1
	.uleb128 0xad
	.ascii "__C89_NAMELESSSTRUCTNAME4 \0"
	.byte	0x1
	.uleb128 0xae
	.ascii "__C89_NAMELESSSTRUCTNAME5 \0"
	.byte	0x1
	.uleb128 0xaf
	.ascii "__C89_NAMELESSUNIONNAME \0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "__C89_NAMELESSUNIONNAME1 \0"
	.byte	0x1
	.uleb128 0xb1
	.ascii "__C89_NAMELESSUNIONNAME2 \0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "__C89_NAMELESSUNIONNAME3 \0"
	.byte	0x1
	.uleb128 0xb3
	.ascii "__C89_NAMELESSUNIONNAME4 \0"
	.byte	0x1
	.uleb128 0xb4
	.ascii "__C89_NAMELESSUNIONNAME5 \0"
	.byte	0x1
	.uleb128 0xb5
	.ascii "__C89_NAMELESSUNIONNAME6 \0"
	.byte	0x1
	.uleb128 0xb6
	.ascii "__C89_NAMELESSUNIONNAME7 \0"
	.byte	0x1
	.uleb128 0xb7
	.ascii "__C89_NAMELESSUNIONNAME8 \0"
	.byte	0x1
	.uleb128 0xbb
	.ascii "__GNU_EXTENSION __MINGW_EXTENSION\0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "__MINGW_HAVE_ANSI_C99_PRINTF 1\0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "__MINGW_HAVE_WIDE_C99_PRINTF 1\0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "__MINGW_HAVE_ANSI_C99_SCANF 1\0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "__MINGW_HAVE_WIDE_C99_SCANF 1\0"
	.byte	0x1
	.uleb128 0xc8
	.ascii "__MINGW_POISON_NAME(__IFACE) __IFACE ##_layout_has_not_been_verified_and_its_declaration_is_most_likely_incorrect\0"
	.byte	0x1
	.uleb128 0xce
	.ascii "__MSABI_LONG(x) x ## l\0"
	.byte	0x1
	.uleb128 0xd5
	.ascii "__MINGW_GCC_VERSION (__GNUC__ * 10000 + __GNUC_MINOR__ * 100 + __GNUC_PATCHLEVEL__)\0"
	.byte	0x1
	.uleb128 0xdd
	.ascii "__MINGW_GNUC_PREREQ(major,minor) (__GNUC__ > (major) || (__GNUC__ == (major) && __GNUC_MINOR__ >= (minor)))\0"
	.byte	0x1
	.uleb128 0xe8
	.ascii "__MINGW_MSC_PREREQ(major,minor) 0\0"
	.byte	0x1
	.uleb128 0xf4
	.ascii "__MINGW_ATTRIB_DEPRECATED_STR(X) \0"
	.byte	0x1
	.uleb128 0xf7
	.ascii "__MINGW_SEC_WARN_STR \"This function or variable may be unsafe, use _CRT_SECURE_NO_WARNINGS to disable deprecation\"\0"
	.byte	0x1
	.uleb128 0xfa
	.ascii "__MINGW_MSVC2005_DEPREC_STR \"This POSIX function is deprecated beginning in Visual C++ 2005, use _CRT_NONSTDC_NO_DEPRECATE to disable deprecation\"\0"
	.byte	0x1
	.uleb128 0xfe
	.ascii "__MINGW_ATTRIB_DEPRECATED_MSVC2005 __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_MSVC2005_DEPREC_STR)\0"
	.byte	0x1
	.uleb128 0x105
	.ascii "__MINGW_ATTRIB_DEPRECATED_SEC_WARN __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_SEC_WARN_STR)\0"
	.byte	0x1
	.uleb128 0x10b
	.ascii "__MINGW_MS_PRINTF(__format,__args) __attribute__((__format__(ms_printf, __format,__args)))\0"
	.byte	0x1
	.uleb128 0x10e
	.ascii "__MINGW_MS_SCANF(__format,__args) __attribute__((__format__(ms_scanf, __format,__args)))\0"
	.byte	0x1
	.uleb128 0x111
	.ascii "__MINGW_GNU_PRINTF(__format,__args) __attribute__((__format__(gnu_printf,__format,__args)))\0"
	.byte	0x1
	.uleb128 0x114
	.ascii "__MINGW_GNU_SCANF(__format,__args) __attribute__((__format__(gnu_scanf, __format,__args)))\0"
	.byte	0x2
	.uleb128 0x117
	.ascii "__mingw_ovr\0"
	.byte	0x2
	.uleb128 0x118
	.ascii "__mingw_static_ovr\0"
	.byte	0x1
	.uleb128 0x11e
	.ascii "__mingw_ovr static __attribute__ ((__unused__)) __inline__ __cdecl\0"
	.byte	0x1
	.uleb128 0x120
	.ascii "__mingw_static_ovr __mingw_ovr\0"
	.byte	0x4
	.file 9 "c:/mingw/x86_64-w64-mingw32/include/_mingw_secapi.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x8
	.ascii "_INC_MINGW_SECAPI \0"
	.byte	0x2
	.uleb128 0x1d
	.ascii "_CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES\0"
	.byte	0x2
	.uleb128 0x1e
	.ascii "_CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY\0"
	.byte	0x2
	.uleb128 0x1f
	.ascii "_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES\0"
	.byte	0x2
	.uleb128 0x20
	.ascii "_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT\0"
	.byte	0x2
	.uleb128 0x21
	.ascii "_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "_CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES 0\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "_CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY 0\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES 0\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT 0\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY 0\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "__MINGW_CRT_NAME_CONCAT2(sym) ::sym ##_s\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "__CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY_0_3_(__ret,__func,__type1,__attrib1,__arg1,__type2,__attrib2,__arg2,__type3,__attrib3,__arg3) _CRTIMP __ret __cdecl __func(__type1 * __attrib1 __arg1, __type2 __attrib2 __arg2, __type3 __attrib3 __arg3) __MINGW_ATTRIB_DEPRECATED_SEC_WARN;\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x1a
	.ascii "__LONG32 long\0"
	.byte	0x2
	.uleb128 0x22
	.ascii "__stdcall\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "__stdcall \0"
	.byte	0x1
	.uleb128 0x35
	.ascii "__MINGW_IMPORT extern __attribute__ ((__dllimport__))\0"
	.byte	0x2
	.uleb128 0x38
	.ascii "__USE_CRTIMP\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "__USE_CRTIMP 1\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "_CRTIMP __attribute__ ((__dllimport__))\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "__DECLSPEC_SUPPORTED \0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "USE___UUIDOF 0\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "_inline __inline\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "__CRT_INLINE extern inline __attribute__((__gnu_inline__))\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "__MINGW_INTRIN_INLINE extern __inline__ __attribute__((__always_inline__,__gnu_inline__))\0"
	.byte	0x2
	.uleb128 0x69
	.ascii "__CRT__NO_INLINE\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "__CRT__NO_INLINE 1\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "__UNUSED_PARAM(x) x __attribute__ ((__unused__))\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "__restrict_arr __restrict\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "__MINGW_ATTRIB_NORETURN __attribute__ ((__noreturn__))\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "__MINGW_ATTRIB_CONST __attribute__ ((__const__))\0"
	.byte	0x1
	.uleb128 0x9c
	.ascii "__MINGW_ATTRIB_MALLOC __attribute__ ((__malloc__))\0"
	.byte	0x1
	.uleb128 0x9d
	.ascii "__MINGW_ATTRIB_PURE __attribute__ ((__pure__))\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "__MINGW_ATTRIB_NONNULL(arg) __attribute__ ((__nonnull__ (arg)))\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "__MINGW_ATTRIB_UNUSED __attribute__ ((__unused__))\0"
	.byte	0x1
	.uleb128 0xb6
	.ascii "__MINGW_ATTRIB_USED __attribute__ ((__used__))\0"
	.byte	0x1
	.uleb128 0xb7
	.ascii "__MINGW_ATTRIB_DEPRECATED __attribute__ ((__deprecated__))\0"
	.byte	0x1
	.uleb128 0xb9
	.ascii "__MINGW_ATTRIB_DEPRECATED_MSG(x) __attribute__ ((__deprecated__(x)))\0"
	.byte	0x1
	.uleb128 0xc8
	.ascii "__MINGW_NOTHROW __attribute__ ((__nothrow__))\0"
	.byte	0x1
	.uleb128 0xd0
	.ascii "__MINGW_ATTRIB_NO_OPTIMIZE __attribute__((__optimize__ (\"0\")))\0"
	.byte	0x1
	.uleb128 0xd6
	.ascii "__MINGW_PRAGMA_PARAM(x) _Pragma (#x)\0"
	.byte	0x1
	.uleb128 0xdd
	.ascii "__MINGW_BROKEN_INTERFACE(x) __MINGW_PRAGMA_PARAM(message (\"Interface \" _CRT_STRINGIZE(x) \" has unverified layout.\"))\0"
	.byte	0x1
	.uleb128 0xe3
	.ascii "__MSVCRT_VERSION__ 0x700\0"
	.byte	0x1
	.uleb128 0xe8
	.ascii "_WIN32_WINNT 0x502\0"
	.byte	0x1
	.uleb128 0xec
	.ascii "_INT128_DEFINED \0"
	.byte	0x1
	.uleb128 0xee
	.ascii "__int8 char\0"
	.byte	0x1
	.uleb128 0xef
	.ascii "__int16 short\0"
	.byte	0x1
	.uleb128 0xf0
	.ascii "__int32 int\0"
	.byte	0x1
	.uleb128 0xf1
	.ascii "__int64 long long\0"
	.byte	0x1
	.uleb128 0xff
	.ascii "__ptr32 \0"
	.byte	0x1
	.uleb128 0x100
	.ascii "__ptr64 \0"
	.byte	0x1
	.uleb128 0x102
	.ascii "__unaligned \0"
	.byte	0x1
	.uleb128 0x105
	.ascii "__w64 \0"
	.byte	0x1
	.uleb128 0x10a
	.ascii "__forceinline extern __inline__ __attribute__((__always_inline__,__gnu_inline__))\0"
	.byte	0x1
	.uleb128 0x116
	.ascii "__nothrow \0"
	.file 10 "c:/mingw/x86_64-w64-mingw32/include/vadefs.h"
	.byte	0x3
	.uleb128 0x11a
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_VADEFS \0"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x24b
	.ascii "MINGW_SDK_INIT \0"
	.file 11 "c:/mingw/x86_64-w64-mingw32/include/sdks/_mingw_directx.h"
	.byte	0x3
	.uleb128 0x253
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x3
	.ascii "__MINGW_HAS_DXSDK 1\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "MINGW_HAS_DDRAW_H 1\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "MINGW_DDRAW_VERSION 7\0"
	.byte	0x4
	.file 12 "c:/mingw/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h"
	.byte	0x3
	.uleb128 0x254
	.uleb128 0xc
	.byte	0x1
	.uleb128 0x2
	.ascii "MINGW_DDK_H \0"
	.byte	0x1
	.uleb128 0x4
	.ascii "MINGW_HAS_DDK_H 1\0"
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.uleb128 0xc
	.ascii "_CRT_PACKING\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "_CRT_PACKING 8\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "__GNUC_VA_LIST \0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "_VA_LIST_DEFINED \0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "_ADDRESSOF(v) (&(v))\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "_crt_va_start(v,l) __builtin_va_start(v,l)\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "_crt_va_arg(v,l) __builtin_va_arg(v,l)\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "_crt_va_end(v) __builtin_va_end(v)\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "_crt_va_copy(d,s) __builtin_va_copy(d,s)\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x11d
	.ascii "__CRT_STRINGIZE(_Value) #_Value\0"
	.byte	0x1
	.uleb128 0x11e
	.ascii "_CRT_STRINGIZE(_Value) __CRT_STRINGIZE(_Value)\0"
	.byte	0x1
	.uleb128 0x122
	.ascii "__CRT_WIDE(_String) L ## _String\0"
	.byte	0x1
	.uleb128 0x123
	.ascii "_CRT_WIDE(_String) __CRT_WIDE(_String)\0"
	.byte	0x1
	.uleb128 0x127
	.ascii "_W64 \0"
	.byte	0x1
	.uleb128 0x12e
	.ascii "_CRTIMP_NOIA64 _CRTIMP\0"
	.byte	0x1
	.uleb128 0x133
	.ascii "_CRTIMP2 _CRTIMP\0"
	.byte	0x1
	.uleb128 0x137
	.ascii "_CRTIMP_ALTERNATIVE _CRTIMP\0"
	.byte	0x1
	.uleb128 0x138
	.ascii "_CRT_ALTERNATIVE_IMPORTED \0"
	.byte	0x1
	.uleb128 0x13c
	.ascii "_MRTIMP2 _CRTIMP\0"
	.byte	0x1
	.uleb128 0x145
	.ascii "_DLL \0"
	.byte	0x1
	.uleb128 0x149
	.ascii "_MT \0"
	.byte	0x1
	.uleb128 0x14d
	.ascii "_MCRTIMP _CRTIMP\0"
	.byte	0x1
	.uleb128 0x151
	.ascii "_CRTIMP_PURE _CRTIMP\0"
	.byte	0x1
	.uleb128 0x155
	.ascii "_PGLOBAL \0"
	.byte	0x1
	.uleb128 0x159
	.ascii "_AGLOBAL \0"
	.byte	0x1
	.uleb128 0x15c
	.ascii "_SECURECRT_FILL_BUFFER_PATTERN 0xFD\0"
	.byte	0x1
	.uleb128 0x15d
	.ascii "_CRT_DEPRECATE_TEXT(_Text) __declspec(deprecated)\0"
	.byte	0x1
	.uleb128 0x160
	.ascii "_CRT_INSECURE_DEPRECATE_MEMORY(_Replacement) \0"
	.byte	0x1
	.uleb128 0x164
	.ascii "_CRT_INSECURE_DEPRECATE_GLOBALS(_Replacement) \0"
	.byte	0x1
	.uleb128 0x168
	.ascii "_CRT_MANAGED_HEAP_DEPRECATE \0"
	.byte	0x1
	.uleb128 0x16c
	.ascii "_CRT_OBSOLETE(_NewItem) \0"
	.byte	0x1
	.uleb128 0x178
	.ascii "_CONST_RETURN \0"
	.byte	0x1
	.uleb128 0x17d
	.ascii "UNALIGNED __unaligned\0"
	.byte	0x1
	.uleb128 0x187
	.ascii "_CRT_ALIGN(x) __attribute__ ((__aligned__ (x)))\0"
	.byte	0x1
	.uleb128 0x18e
	.ascii "__CRTDECL __cdecl\0"
	.byte	0x1
	.uleb128 0x191
	.ascii "_ARGMAX 100\0"
	.byte	0x1
	.uleb128 0x194
	.ascii "_TRUNCATE ((size_t)-1)\0"
	.byte	0x1
	.uleb128 0x198
	.ascii "_CRT_UNUSED(x) (void)x\0"
	.byte	0x2
	.uleb128 0x1bc
	.ascii "_CRT_glob\0"
	.byte	0x1
	.uleb128 0x1bd
	.ascii "_CRT_glob _dowildcard\0"
	.byte	0x1
	.uleb128 0x1cd
	.ascii "__ANONYMOUS_DEFINED \0"
	.byte	0x1
	.uleb128 0x1ce
	.ascii "_ANONYMOUS_UNION __MINGW_EXTENSION\0"
	.byte	0x1
	.uleb128 0x1cf
	.ascii "_ANONYMOUS_STRUCT __MINGW_EXTENSION\0"
	.byte	0x1
	.uleb128 0x1d1
	.ascii "_UNION_NAME(x) \0"
	.byte	0x1
	.uleb128 0x1d2
	.ascii "_STRUCT_NAME(x) \0"
	.byte	0x1
	.uleb128 0x1e6
	.ascii "DUMMYUNIONNAME \0"
	.byte	0x1
	.uleb128 0x1e7
	.ascii "DUMMYUNIONNAME1 \0"
	.byte	0x1
	.uleb128 0x1e8
	.ascii "DUMMYUNIONNAME2 \0"
	.byte	0x1
	.uleb128 0x1e9
	.ascii "DUMMYUNIONNAME3 \0"
	.byte	0x1
	.uleb128 0x1ea
	.ascii "DUMMYUNIONNAME4 \0"
	.byte	0x1
	.uleb128 0x1eb
	.ascii "DUMMYUNIONNAME5 \0"
	.byte	0x1
	.uleb128 0x1ec
	.ascii "DUMMYUNIONNAME6 \0"
	.byte	0x1
	.uleb128 0x1ed
	.ascii "DUMMYUNIONNAME7 \0"
	.byte	0x1
	.uleb128 0x1ee
	.ascii "DUMMYUNIONNAME8 \0"
	.byte	0x1
	.uleb128 0x1ef
	.ascii "DUMMYUNIONNAME9 \0"
	.byte	0x1
	.uleb128 0x1fc
	.ascii "DUMMYSTRUCTNAME \0"
	.byte	0x1
	.uleb128 0x1fd
	.ascii "DUMMYSTRUCTNAME1 \0"
	.byte	0x1
	.uleb128 0x1fe
	.ascii "DUMMYSTRUCTNAME2 \0"
	.byte	0x1
	.uleb128 0x1ff
	.ascii "DUMMYSTRUCTNAME3 \0"
	.byte	0x1
	.uleb128 0x200
	.ascii "DUMMYSTRUCTNAME4 \0"
	.byte	0x1
	.uleb128 0x201
	.ascii "DUMMYSTRUCTNAME5 \0"
	.byte	0x1
	.uleb128 0x229
	.ascii "__CRT_UUID_DECL(type,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8) \0"
	.byte	0x1
	.uleb128 0x236
	.ascii "__MINGW_DEBUGBREAK_IMPL 1\0"
	.byte	0x4
	.byte	0x2
	.uleb128 0xd
	.ascii "_CRT_PACKING\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "_CRT_PACKING 8\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "_CRTNOALIAS \0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "_CRTRESTRICT \0"
	.byte	0x1
	.uleb128 0x20
	.ascii "_SIZE_T_DEFINED \0"
	.byte	0x2
	.uleb128 0x21
	.ascii "size_t\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "_SSIZE_T_DEFINED \0"
	.byte	0x2
	.uleb128 0x2b
	.ascii "ssize_t\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "_RSIZE_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x39
	.ascii "_INTPTR_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "__intptr_t_defined \0"
	.byte	0x2
	.uleb128 0x3c
	.ascii "intptr_t\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "_UINTPTR_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x48
	.ascii "__uintptr_t_defined \0"
	.byte	0x2
	.uleb128 0x49
	.ascii "uintptr_t\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "_PTRDIFF_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x55
	.ascii "_PTRDIFF_T_ \0"
	.byte	0x2
	.uleb128 0x56
	.ascii "ptrdiff_t\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "_WCHAR_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x67
	.ascii "_WCTYPE_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x69
	.ascii "_WINT_T \0"
	.byte	0x1
	.uleb128 0x70
	.ascii "_ERRCODE_DEFINED \0"
	.byte	0x1
	.uleb128 0x75
	.ascii "_TIME32_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "_TIME64_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x86
	.ascii "_TIME_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "_CRT_SECURE_CPP_NOTHROW throw()\0"
	.byte	0x1
	.uleb128 0xfe
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(__ret,__func,__dsttype,__dst) \0"
	.byte	0x1
	.uleb128 0xff
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1(__ret,__func,__dsttype,__dst,__type1,__arg1) \0"
	.byte	0x1
	.uleb128 0x100
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(__ret,__func,__dsttype,__dst,__type1,__arg1,__type2,__arg2) \0"
	.byte	0x1
	.uleb128 0x101
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(__ret,__func,__dsttype,__dst,__type1,__arg1,__type2,__arg2,__type3,__arg3) \0"
	.byte	0x1
	.uleb128 0x102
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4(__ret,__func,__dsttype,__dst,__type1,__arg1,__type2,__arg2,__type3,__arg3,__type4,__arg4) \0"
	.byte	0x1
	.uleb128 0x103
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(__ret,__func,__type0,__arg0,__dsttype,__dst,__type1,__arg1) \0"
	.byte	0x1
	.uleb128 0x104
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2(__ret,__func,__type0,__arg0,__dsttype,__dst,__type1,__arg1,__type2,__arg2) \0"
	.byte	0x1
	.uleb128 0x105
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(__ret,__func,__type0,__arg0,__dsttype,__dst,__type1,__arg1,__type2,__arg2,__type3,__arg3) \0"
	.byte	0x1
	.uleb128 0x106
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0(__ret,__func,__type1,__arg1,__type2,__arg2,__dsttype,__dst) \0"
	.byte	0x1
	.uleb128 0x107
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST(__ret,__func,__vfunc,__dsttype,__dst,__type1,__arg1) \0"
	.byte	0x1
	.uleb128 0x108
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(__ret,__func,__vfunc,__dsttype,__dst,__type1,__arg1,__type2,__arg2) \0"
	.byte	0x1
	.uleb128 0x109
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH(__ret,__func,__dsttype,__src) \0"
	.byte	0x1
	.uleb128 0x10d
	.ascii "__DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(__ret_type,__ret_policy,__decl_spec,__name,__dst_attr,__dst_type,__dst) __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0_EX(__ret_type, __ret_policy, __decl_spec, __func_name, __func_name ##_s, __dst_attr, __dst_type, __dst)\0"
	.byte	0x1
	.uleb128 0x10f
	.ascii "__DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1(__ret_type,__ret_policy,__decl_spec,__name,__dst_attr,__dst_type,__dst,__arg1_type,__arg1) __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_EX(__ret_type, __ret_policy, __decl_spec, __func_name, __func_name ##_s, __dst_attr, __dst_type, __dst, __arg1_type, __arg1, __arg2_type, __arg2)\0"
	.byte	0x1
	.uleb128 0x111
	.ascii "__DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2(__ret_type,__ret_policy,__decl_spec,__name,__dst_attr,__dst_type,__dst,__arg1_type,__arg1,__arg2_type,__arg2) __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_EX(__ret_type, __ret_policy, __decl_spec, __func_name, __func_name ##_s, __dst_attr, __dst_type, __dst, __arg1_type, __arg1, __arg2_type, __arg2)\0"
	.byte	0x1
	.uleb128 0x113
	.ascii "__DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3(__ret_type,__ret_policy,__decl_spec,__name,__dst_attr,__dst_type,__dst,__arg1_type,__arg1,__arg2_type,__arg2,__arg3_type,__arg3) __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3_EX(__ret_type, __ret_policy, __decl_spec, __func_name, __func_name ##_s, __dst_attr, __dst_type, __dst, __arg1_type, __arg1, __arg2_type, __arg2, __arg3_type, __arg3)\0"
	.byte	0x1
	.uleb128 0x115
	.ascii "__DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4(__ret_type,__ret_policy,__decl_spec,__name,__dst_attr,__dst_type,__dst,__arg1_type,__arg1,__arg2_type,__arg2,__arg3_type,__arg3,__arg4_type,__arg4) __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4_EX(__ret_type, __ret_policy, __decl_spec, __func_name, __func_name ##_s, __dst_attr, __dst_type, __dst, __arg1_type, __arg1, __arg2_type, __arg2, __arg3_type, __arg3, __arg4_type, __arg4)\0"
	.byte	0x1
	.uleb128 0x19e
	.ascii "__DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0_EX(__ret_type,__ret_policy,__decl_spec,__name,__sec_name,__dst_attr,__dst_type,__dst) \0"
	.byte	0x1
	.uleb128 0x19f
	.ascii "__DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX(__ret_type,__ret_policy,__decl_spec,__name,__sec_name,__dst_attr,__dst_type,__dst,__arg1_type,__arg1) \0"
	.byte	0x1
	.uleb128 0x1a0
	.ascii "__DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_EX(__ret_type,__ret_policy,__decl_spec,__name,__sec_name,__dst_attr,__dst_type,__dst,__arg1_type,__arg1,__arg2_type,__arg2) \0"
	.byte	0x1
	.uleb128 0x1a1
	.ascii "__DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3_EX(__ret_type,__ret_policy,__decl_spec,__name,__sec_name,__dst_attr,__dst_type,__dst,__arg1_type,__arg1,__arg2_type,__arg2,__arg3_type,__arg3) \0"
	.byte	0x1
	.uleb128 0x1a2
	.ascii "__DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4_EX(__ret_type,__ret_policy,__decl_spec,__name,__sec_name,__dst_attr,__dst_type,__dst,__arg1_type,__arg1,__arg2_type,__arg2,__arg3_type,__arg3,__arg4_type,__arg4) \0"
	.byte	0x1
	.uleb128 0x1b2
	.ascii "_TAGLC_ID_DEFINED \0"
	.byte	0x1
	.uleb128 0x1bb
	.ascii "_THREADLOCALEINFO \0"
	.byte	0x1
	.uleb128 0x1d8
	.ascii "__crt_typefix(ctype) \0"
	.byte	0x4
	.file 13 "c:/mingw/x86_64-w64-mingw32/include/_mingw_print_push.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xd
	.byte	0x4
	.byte	0x1
	.uleb128 0x13
	.ascii "BUFSIZ 512\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "_NFILE _NSTREAM_\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "_NSTREAM_ 512\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "_IOB_ENTRIES 20\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "EOF (-1)\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "_FILE_DEFINED \0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "_P_tmpdir \"\\\\\"\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "_wP_tmpdir L\"\\\\\"\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "L_tmpnam (sizeof(_P_tmpdir) + 12)\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "SEEK_CUR 1\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "SEEK_END 2\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "SEEK_SET 0\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "STDIN_FILENO 0\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "STDOUT_FILENO 1\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "STDERR_FILENO 2\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "FILENAME_MAX 260\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "FOPEN_MAX 20\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "_SYS_OPEN 20\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "TMP_MAX 32767\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "NULL ((void *)0)\0"
	.file 14 "c:/mingw/x86_64-w64-mingw32/include/_mingw_off_t.h"
	.byte	0x3
	.uleb128 0x50
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x2
	.ascii "_OFF_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x4
	.ascii "_OFF_T_ \0"
	.byte	0x1
	.uleb128 0xc
	.ascii "_OFF64_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x15
	.ascii "_FILE_OFFSET_BITS_SET_OFFT \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x56
	.ascii "_iob __iob_func()\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "_FPOS_T_DEFINED \0"
	.byte	0x2
	.uleb128 0x65
	.ascii "_FPOSOFF\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "_FPOSOFF(fp) ((long)(fp))\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "_STDSTREAM_DEFINED \0"
	.byte	0x1
	.uleb128 0x74
	.ascii "stdin (__acrt_iob_func(0))\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "stdout (__acrt_iob_func(1))\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "stderr (__acrt_iob_func(2))\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "_IOREAD 0x0001\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "_IOWRT 0x0002\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "_IOFBF 0x0000\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "_IOLBF 0x0040\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "_IONBF 0x0004\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "_IOMYBUF 0x0008\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "_IOEOF 0x0010\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "_IOERR 0x0020\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "_IOSTRG 0x0040\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "_IORW 0x0080\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "_TWO_DIGIT_EXPONENT 0x1\0"
	.byte	0x2
	.uleb128 0xdc
	.ascii "__MINGW_PRINTF_FORMAT\0"
	.byte	0x2
	.uleb128 0xdd
	.ascii "__MINGW_SCANF_FORMAT\0"
	.byte	0x1
	.uleb128 0xe6
	.ascii "__MINGW_PRINTF_FORMAT ms_printf\0"
	.byte	0x1
	.uleb128 0xe7
	.ascii "__MINGW_SCANF_FORMAT ms_scanf\0"
	.byte	0x2
	.uleb128 0x1a0
	.ascii "__builtin_vsnprintf\0"
	.byte	0x2
	.uleb128 0x1a1
	.ascii "__builtin_vsprintf\0"
	.byte	0x1
	.uleb128 0x281
	.ascii "_FILE_OFFSET_BITS_SET_FSEEKO \0"
	.byte	0x1
	.uleb128 0x288
	.ascii "_FILE_OFFSET_BITS_SET_FTELLO \0"
	.byte	0x1
	.uleb128 0x295
	.ascii "_CRT_PERROR_DEFINED \0"
	.byte	0x1
	.uleb128 0x29b
	.ascii "popen _popen\0"
	.byte	0x1
	.uleb128 0x29c
	.ascii "pclose _pclose\0"
	.byte	0x1
	.uleb128 0x2a3
	.ascii "_CRT_DIRECTORY_DEFINED \0"
	.byte	0x2
	.uleb128 0x2ff
	.ascii "snprintf\0"
	.byte	0x2
	.uleb128 0x300
	.ascii "vsnprintf\0"
	.byte	0x1
	.uleb128 0x332
	.ascii "_WSTDIO_DEFINED \0"
	.byte	0x1
	.uleb128 0x44b
	.ascii "WEOF (wint_t)(0xFFFF)\0"
	.byte	0x2
	.uleb128 0x4ae
	.ascii "snwprintf\0"
	.byte	0x2
	.uleb128 0x4af
	.ascii "vsnwprintf\0"
	.file 15 "c:/mingw/x86_64-w64-mingw32/include/swprintf.inl"
	.byte	0x3
	.uleb128 0x4cb
	.uleb128 0xf
	.byte	0x1
	.uleb128 0x8
	.ascii "_INC_SWPRINTF_INL \0"
	.byte	0x2
	.uleb128 0xc
	.ascii "__mingw_ovr\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "__mingw_ovr static __attribute__ ((__unused__)) __inline__ __cdecl\0"
	.byte	0x2
	.uleb128 0x10
	.ascii "__mingw_static_ovr\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "__mingw_static_ovr __mingw_ovr\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x4dc
	.ascii "_CRT_WPERROR_DEFINED \0"
	.byte	0x1
	.uleb128 0x4e1
	.ascii "wpopen _wpopen\0"
	.byte	0x2
	.uleb128 0x4ea
	.ascii "_CRT_GETPUTWCHAR_NOINLINE\0"
	.byte	0x1
	.uleb128 0x4ed
	.ascii "getwchar() fgetwc(stdin)\0"
	.byte	0x1
	.uleb128 0x4ee
	.ascii "putwchar(_c) fputwc((_c),stdout)\0"
	.byte	0x1
	.uleb128 0x4f4
	.ascii "getwc(_stm) fgetwc(_stm)\0"
	.byte	0x1
	.uleb128 0x4f5
	.ascii "putwc(_c,_stm) fputwc(_c,_stm)\0"
	.byte	0x1
	.uleb128 0x4f6
	.ascii "_putwc_nolock(_c,_stm) _fputwc_nolock(_c,_stm)\0"
	.byte	0x1
	.uleb128 0x4f7
	.ascii "_getwc_nolock(_c) _fgetwc_nolock(_c)\0"
	.byte	0x1
	.uleb128 0x4fa
	.ascii "_STDIO_DEFINED \0"
	.byte	0x1
	.uleb128 0x503
	.ascii "_fgetc_nolock(_stream) (--(_stream)->_cnt >= 0 ? 0xff & *(_stream)->_ptr++ : _filbuf(_stream))\0"
	.byte	0x1
	.uleb128 0x504
	.ascii "_fputc_nolock(_c,_stream) (--(_stream)->_cnt >= 0 ? 0xff & (*(_stream)->_ptr++ = (char)(_c)) : _flsbuf((_c),(_stream)))\0"
	.byte	0x1
	.uleb128 0x505
	.ascii "_getc_nolock(_stream) _fgetc_nolock(_stream)\0"
	.byte	0x1
	.uleb128 0x506
	.ascii "_putc_nolock(_c,_stream) _fputc_nolock(_c,_stream)\0"
	.byte	0x1
	.uleb128 0x508
	.ascii "_getchar_nolock() _getc_nolock(stdin)\0"
	.byte	0x1
	.uleb128 0x509
	.ascii "_putchar_nolock(_c) _putc_nolock((_c),stdout)\0"
	.byte	0x1
	.uleb128 0x50a
	.ascii "_getwchar_nolock() _getwc_nolock(stdin)\0"
	.byte	0x1
	.uleb128 0x50b
	.ascii "_putwchar_nolock(_c) _putwc_nolock((_c),stdout)\0"
	.byte	0x1
	.uleb128 0x51a
	.ascii "P_tmpdir _P_tmpdir\0"
	.byte	0x1
	.uleb128 0x51b
	.ascii "SYS_OPEN _SYS_OPEN\0"
	.byte	0x1
	.uleb128 0x52a
	.ascii "__MINGW_MBWC_CONVERT_DEFINED \0"
	.byte	0x1
	.uleb128 0x553
	.ascii "_WSPAWN_DEFINED \0"
	.byte	0x1
	.uleb128 0x55f
	.ascii "_P_WAIT 0\0"
	.byte	0x1
	.uleb128 0x560
	.ascii "_P_NOWAIT 1\0"
	.byte	0x1
	.uleb128 0x561
	.ascii "_OLD_P_OVERLAY 2\0"
	.byte	0x1
	.uleb128 0x562
	.ascii "_P_NOWAITO 3\0"
	.byte	0x1
	.uleb128 0x563
	.ascii "_P_DETACH 4\0"
	.byte	0x1
	.uleb128 0x564
	.ascii "_P_OVERLAY 2\0"
	.byte	0x1
	.uleb128 0x566
	.ascii "_WAIT_CHILD 0\0"
	.byte	0x1
	.uleb128 0x567
	.ascii "_WAIT_GRANDCHILD 1\0"
	.byte	0x1
	.uleb128 0x56b
	.ascii "_SPAWNV_DEFINED \0"
	.file 16 "c:/mingw/x86_64-w64-mingw32/include/sec_api/stdio_s.h"
	.byte	0x3
	.uleb128 0x578
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_STDIO_S \0"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.file 17 "c:/mingw/x86_64-w64-mingw32/include/_mingw_print_pop.h"
	.byte	0x3
	.uleb128 0x57a
	.uleb128 0x11
	.byte	0x4
	.byte	0x4
	.file 18 "c:/mingw/x86_64-w64-mingw32/include/string.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_STRING \0"
	.byte	0x1
	.uleb128 0x10
	.ascii "_SECIMP __declspec(dllimport)\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "_NLSCMP_DEFINED \0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "_NLSCMPERROR 2147483647\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "_WConst_return _CONST_RETURN\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "_CRT_MEMORY_DEFINED \0"
	.byte	0x2
	.uleb128 0x63
	.ascii "strtok_r\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "strncasecmp _strnicmp\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "strcasecmp _stricmp\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "_WSTRING_DEFINED \0"
	.byte	0x1
	.uleb128 0xae
	.ascii "wcswcs wcsstr\0"
	.file 19 "c:/mingw/x86_64-w64-mingw32/include/sec_api/string_s.h"
	.byte	0x3
	.uleb128 0xbe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_STRING_S \0"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_STDLIB \0"
	.file 20 "c:/mingw/lib/gcc/x86_64-w64-mingw32/8.4.0/include-fixed/limits.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x14
	.byte	0x1
	.uleb128 0x1e
	.ascii "_GCC_LIMITS_H_ \0"
	.file 21 "c:/mingw/lib/gcc/x86_64-w64-mingw32/8.4.0/include-fixed/syslimits.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x6
	.ascii "_GCC_NEXT_LIMITS_H \0"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x14
	.file 22 "c:/mingw/x86_64-w64-mingw32/include/limits.h"
	.byte	0x3
	.uleb128 0xc2
	.uleb128 0x16
	.byte	0x1
	.uleb128 0x9
	.ascii "_INC_LIMITS \0"
	.byte	0x1
	.uleb128 0x14
	.ascii "PATH_MAX 260\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "CHAR_BIT 8\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "SCHAR_MIN (-128)\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "SCHAR_MAX 127\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "UCHAR_MAX 0xff\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "CHAR_MIN SCHAR_MIN\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "CHAR_MAX SCHAR_MAX\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "MB_LEN_MAX 5\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "SHRT_MIN (-32768)\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "SHRT_MAX 32767\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "USHRT_MAX 0xffffU\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "INT_MIN (-2147483647 - 1)\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "INT_MAX 2147483647\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "UINT_MAX 0xffffffffU\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "LONG_MIN (-2147483647L - 1)\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "LONG_MAX 2147483647L\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "ULONG_MAX 0xffffffffUL\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "LLONG_MAX 9223372036854775807ll\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "LLONG_MIN (-9223372036854775807ll - 1)\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "ULLONG_MAX 0xffffffffffffffffull\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "_I8_MIN (-127 - 1)\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "_I8_MAX 127\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "_UI8_MAX 0xffu\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "_I16_MIN (-32767 - 1)\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "_I16_MAX 32767\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "_UI16_MAX 0xffffu\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "_I32_MIN (-2147483647 - 1)\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "_I32_MAX 2147483647\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "_UI32_MAX 0xffffffffu\0"
	.byte	0x2
	.uleb128 0x3e
	.ascii "LONG_LONG_MAX\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "LONG_LONG_MAX 9223372036854775807ll\0"
	.byte	0x2
	.uleb128 0x40
	.ascii "LONG_LONG_MIN\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "LONG_LONG_MIN (-LONG_LONG_MAX-1)\0"
	.byte	0x2
	.uleb128 0x42
	.ascii "ULONG_LONG_MAX\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "ULONG_LONG_MAX (2ull * LONG_LONG_MAX + 1ull)\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "_I64_MIN (-9223372036854775807ll - 1)\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "_I64_MAX 9223372036854775807ll\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "_UI64_MAX 0xffffffffffffffffull\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "SIZE_MAX _UI64_MAX\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "SSIZE_MAX _I64_MAX\0"
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.uleb128 0x8
	.ascii "_GCC_NEXT_LIMITS_H\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x3c
	.ascii "_LIMITS_H___ \0"
	.byte	0x2
	.uleb128 0x3f
	.ascii "CHAR_BIT\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "CHAR_BIT __CHAR_BIT__\0"
	.byte	0x2
	.uleb128 0x48
	.ascii "SCHAR_MIN\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "SCHAR_MIN (-SCHAR_MAX - 1)\0"
	.byte	0x2
	.uleb128 0x4a
	.ascii "SCHAR_MAX\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "SCHAR_MAX __SCHAR_MAX__\0"
	.byte	0x2
	.uleb128 0x4e
	.ascii "UCHAR_MAX\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "UCHAR_MAX (SCHAR_MAX * 2 + 1)\0"
	.byte	0x2
	.uleb128 0x60
	.ascii "CHAR_MIN\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "CHAR_MIN SCHAR_MIN\0"
	.byte	0x2
	.uleb128 0x62
	.ascii "CHAR_MAX\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "CHAR_MAX SCHAR_MAX\0"
	.byte	0x2
	.uleb128 0x67
	.ascii "SHRT_MIN\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "SHRT_MIN (-SHRT_MAX - 1)\0"
	.byte	0x2
	.uleb128 0x69
	.ascii "SHRT_MAX\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "SHRT_MAX __SHRT_MAX__\0"
	.byte	0x2
	.uleb128 0x6d
	.ascii "USHRT_MAX\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "USHRT_MAX (SHRT_MAX * 2 + 1)\0"
	.byte	0x2
	.uleb128 0x75
	.ascii "INT_MIN\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "INT_MIN (-INT_MAX - 1)\0"
	.byte	0x2
	.uleb128 0x77
	.ascii "INT_MAX\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "INT_MAX __INT_MAX__\0"
	.byte	0x2
	.uleb128 0x7b
	.ascii "UINT_MAX\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "UINT_MAX (INT_MAX * 2U + 1U)\0"
	.byte	0x2
	.uleb128 0x80
	.ascii "LONG_MIN\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "LONG_MIN (-LONG_MAX - 1L)\0"
	.byte	0x2
	.uleb128 0x82
	.ascii "LONG_MAX\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "LONG_MAX __LONG_MAX__\0"
	.byte	0x2
	.uleb128 0x86
	.ascii "ULONG_MAX\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "ULONG_MAX (LONG_MAX * 2UL + 1UL)\0"
	.byte	0x2
	.uleb128 0x8b
	.ascii "LLONG_MIN\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "LLONG_MIN (-LLONG_MAX - 1LL)\0"
	.byte	0x2
	.uleb128 0x8d
	.ascii "LLONG_MAX\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "LLONG_MAX __LONG_LONG_MAX__\0"
	.byte	0x2
	.uleb128 0x91
	.ascii "ULLONG_MAX\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "ULLONG_MAX (LLONG_MAX * 2ULL + 1ULL)\0"
	.byte	0x2
	.uleb128 0x97
	.ascii "LONG_LONG_MIN\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "LONG_LONG_MIN (-LONG_LONG_MAX - 1LL)\0"
	.byte	0x2
	.uleb128 0x99
	.ascii "LONG_LONG_MAX\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "LONG_LONG_MAX __LONG_LONG_MAX__\0"
	.byte	0x2
	.uleb128 0x9d
	.ascii "ULONG_LONG_MAX\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "ULONG_LONG_MAX (LONG_LONG_MAX * 2ULL + 1ULL)\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x2b
	.ascii "EXIT_SUCCESS 0\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "EXIT_FAILURE 1\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "_ONEXIT_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x34
	.ascii "onexit_t _onexit_t\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "_DIV_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x47
	.ascii "_CRT_DOUBLE_DEC \0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "_PTR_LD(x) ((unsigned char *)(&(x)->ld))\0"
	.byte	0x2
	.uleb128 0x5a
	.ascii "long\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "RAND_MAX 0x7fff\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "MB_CUR_MAX ___mb_cur_max_func()\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "__mb_cur_max (___mb_cur_max_func())\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "__max(a,b) (((a) > (b)) ? (a) : (b))\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "__min(a,b) (((a) < (b)) ? (a) : (b))\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "_MAX_PATH 260\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "_MAX_DRIVE 3\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "_MAX_DIR 256\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "_MAX_FNAME 256\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "_MAX_EXT 256\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "_OUT_TO_DEFAULT 0\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "_OUT_TO_STDERR 1\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "_OUT_TO_MSGBOX 2\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "_REPORT_ERRMODE 3\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "_WRITE_ABORT_MSG 0x1\0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "_CALL_REPORTFAULT 0x2\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "_MAX_ENV 32767\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "_CRT_ERRNO_DEFINED \0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "errno (*_errno())\0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "_doserrno (*__doserrno())\0"
	.byte	0x1
	.uleb128 0xc4
	.ascii "_fmode (* __p__fmode())\0"
	.byte	0x1
	.uleb128 0x11a
	.ascii "__argc (* __MINGW_IMP_SYMBOL(__argc))\0"
	.byte	0x1
	.uleb128 0x11e
	.ascii "__argv (* __p___argv())\0"
	.byte	0x1
	.uleb128 0x122
	.ascii "__wargv (* __MINGW_IMP_SYMBOL(__wargv))\0"
	.byte	0x1
	.uleb128 0x128
	.ascii "_environ (* __MINGW_IMP_SYMBOL(_environ))\0"
	.byte	0x1
	.uleb128 0x12d
	.ascii "_wenviron (* __MINGW_IMP_SYMBOL(_wenviron))\0"
	.byte	0x1
	.uleb128 0x133
	.ascii "_pgmptr (* __MINGW_IMP_SYMBOL(_pgmptr))\0"
	.byte	0x1
	.uleb128 0x138
	.ascii "_wpgmptr (* __MINGW_IMP_SYMBOL(_wpgmptr))\0"
	.byte	0x1
	.uleb128 0x13d
	.ascii "_osplatform (* __MINGW_IMP_SYMBOL(_osplatform))\0"
	.byte	0x1
	.uleb128 0x142
	.ascii "_osver (* __MINGW_IMP_SYMBOL(_osver))\0"
	.byte	0x1
	.uleb128 0x147
	.ascii "_winver (* __MINGW_IMP_SYMBOL(_winver))\0"
	.byte	0x1
	.uleb128 0x14c
	.ascii "_winmajor (* __MINGW_IMP_SYMBOL(_winmajor))\0"
	.byte	0x1
	.uleb128 0x151
	.ascii "_winminor (* __MINGW_IMP_SYMBOL(_winminor))\0"
	.byte	0x1
	.uleb128 0x15d
	.ascii "_countof(_Array) (sizeof(_Array) / sizeof(_Array[0]))\0"
	.byte	0x1
	.uleb128 0x167
	.ascii "_CRT_TERMINATE_DEFINED \0"
	.byte	0x2
	.uleb128 0x175
	.ascii "abort\0"
	.byte	0x1
	.uleb128 0x17e
	.ascii "_CRT_ABS_DEFINED \0"
	.byte	0x1
	.uleb128 0x18c
	.ascii "_CRT_ATOF_DEFINED \0"
	.byte	0x1
	.uleb128 0x195
	.ascii "_CRT_ALGO_DEFINED \0"
	.byte	0x1
	.uleb128 0x1db
	.ascii "strtod __strtod\0"
	.byte	0x1
	.uleb128 0x1ea
	.ascii "_CRT_SYSTEM_DEFINED \0"
	.byte	0x1
	.uleb128 0x1f4
	.ascii "_CRT_ALLOCATION_DEFINED \0"
	.byte	0x2
	.uleb128 0x1fe
	.ascii "_aligned_free\0"
	.byte	0x2
	.uleb128 0x1ff
	.ascii "_aligned_malloc\0"
	.byte	0x1
	.uleb128 0x20d
	.ascii "_WSTDLIB_DEFINED \0"
	.byte	0x1
	.uleb128 0x22f
	.ascii "_CRT_WSYSTEM_DEFINED \0"
	.byte	0x1
	.uleb128 0x247
	.ascii "_CVTBUFSIZE (309+40)\0"
	.byte	0x2
	.uleb128 0x25d
	.ascii "_lrotr\0"
	.byte	0x2
	.uleb128 0x25e
	.ascii "_lrotl\0"
	.byte	0x2
	.uleb128 0x271
	.ascii "_rotl64\0"
	.byte	0x2
	.uleb128 0x272
	.ascii "_rotr64\0"
	.byte	0x2
	.uleb128 0x279
	.ascii "_rotr\0"
	.byte	0x2
	.uleb128 0x27a
	.ascii "_rotl\0"
	.byte	0x1
	.uleb128 0x285
	.ascii "_WSTDLIBP_DEFINED \0"
	.byte	0x1
	.uleb128 0x2a5
	.ascii "sys_errlist _sys_errlist\0"
	.byte	0x1
	.uleb128 0x2a6
	.ascii "sys_nerr _sys_nerr\0"
	.byte	0x1
	.uleb128 0x2a7
	.ascii "environ _environ\0"
	.byte	0x1
	.uleb128 0x2b0
	.ascii "_CRT_SWAB_DEFINED \0"
	.file 23 "c:/mingw/x86_64-w64-mingw32/include/sec_api/stdlib_s.h"
	.byte	0x3
	.uleb128 0x2e4
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_STDLIB_S \0"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2e5
	.uleb128 0x3
	.byte	0x1
	.uleb128 0x7
	.ascii "_MALLOC_H_ \0"
	.byte	0x1
	.uleb128 0x12
	.ascii "_HEAP_MAXREQ 0xFFFFFFFFFFFFFFE0\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "_STATIC_ASSERT(expr) extern void __static_assert_t(int [(expr)?1:-1])\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "_HEAPEMPTY (-1)\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "_HEAPOK (-2)\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "_HEAPBADBEGIN (-3)\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "_HEAPBADNODE (-4)\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "_HEAPEND (-5)\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "_HEAPBADPTR (-6)\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "_FREEENTRY 0\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "_USEDENTRY 1\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "_HEAPINFO_DEFINED \0"
	.byte	0x1
	.uleb128 0x39
	.ascii "__DO_ALIGN_DEFINES \0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "_MM_MALLOC_H_INCLUDED \0"
	.byte	0x2
	.uleb128 0x43
	.ascii "_aligned_free\0"
	.byte	0x2
	.uleb128 0x44
	.ascii "_aligned_malloc\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "_mm_free(a) _aligned_free(a)\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "_mm_malloc(a,b) _aligned_malloc(a,b)\0"
	.byte	0x2
	.uleb128 0x5f
	.ascii "__DO_ALIGN_DEFINES\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "_MAX_WAIT_MALLOC_CRT 60000\0"
	.byte	0x2
	.uleb128 0x74
	.ascii "_alloca\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "_alloca(x) __builtin_alloca((x))\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "_ALLOCA_S_THRESHOLD 1024\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "_ALLOCA_S_STACK_MARKER 0xCCCC\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "_ALLOCA_S_HEAP_MARKER 0xDDDD\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "_ALLOCA_S_MARKER_SIZE 16\0"
	.byte	0x2
	.uleb128 0x99
	.ascii "_malloca\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "_malloca(size) ((((size) + _ALLOCA_S_MARKER_SIZE) <= _ALLOCA_S_THRESHOLD) ? _MarkAllocaS(_alloca((size) + _ALLOCA_S_MARKER_SIZE),_ALLOCA_S_STACK_MARKER) : _MarkAllocaS(malloc((size) + _ALLOCA_S_MARKER_SIZE),_ALLOCA_S_HEAP_MARKER))\0"
	.byte	0x2
	.uleb128 0x9e
	.ascii "_FREEA_INLINE\0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "_FREEA_INLINE \0"
	.byte	0x2
	.uleb128 0xa2
	.ascii "_freea\0"
	.byte	0x2
	.uleb128 0xb5
	.ascii "alloca\0"
	.byte	0x1
	.uleb128 0xb7
	.ascii "alloca(x) __builtin_alloca((x))\0"
	.byte	0x4
	.byte	0x4
	.file 24 "ariph.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x18
	.byte	0x1
	.uleb128 0x2
	.ascii "ARIPH_H_ \0"
	.byte	0x4
	.file 25 "utils.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x19
	.byte	0x1
	.uleb128 0x2
	.ascii "UTILS_H_ \0"
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
	.ident	"GCC: (GNU) 8.4.0"
	.def	printf;	.scl	2;	.type	32;	.endef
