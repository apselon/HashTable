	.text
	.intel_syntax noprefix
	.file	"main.cpp"
	.globl	_Z7id_hashPKc           # -- Begin function _Z7id_hashPKc
	.p2align	4, 0x90
	.type	_Z7id_hashPKc,@function
_Z7id_hashPKc:                          # @_Z7id_hashPKc
	.cfi_startproc
# %bb.0:
	mov	eax, 1
	ret
.Lfunc_end0:
	.size	_Z7id_hashPKc, .Lfunc_end0-_Z7id_hashPKc
	.cfi_endproc
                                        # -- End function
	.globl	_Z8sum_hashPKc          # -- Begin function _Z8sum_hashPKc
	.p2align	4, 0x90
	.type	_Z8sum_hashPKc,@function
_Z8sum_hashPKc:                         # @_Z8sum_hashPKc
	.cfi_startproc
# %bb.0:
	mov	cl, byte ptr [rdi]
	test	cl, cl
	je	.LBB1_1
# %bb.2:
	add	rdi, 1
	xor	eax, eax
	.p2align	4, 0x90
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movsx	rcx, cl
	add	rax, rcx
	movzx	ecx, byte ptr [rdi]
	add	rdi, 1
	test	cl, cl
	jne	.LBB1_3
# %bb.4:
	ret
.LBB1_1:
	xor	eax, eax
	ret
.Lfunc_end1:
	.size	_Z8sum_hashPKc, .Lfunc_end1-_Z8sum_hashPKc
	.cfi_endproc
                                        # -- End function
	.globl	_Z8len_hashPKc          # -- Begin function _Z8len_hashPKc
	.p2align	4, 0x90
	.type	_Z8len_hashPKc,@function
_Z8len_hashPKc:                         # @_Z8len_hashPKc
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	call	strlen@PLT
	shr	rax
	pop	rcx
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end2:
	.size	_Z8len_hashPKc, .Lfunc_end2-_Z8len_hashPKc
	.cfi_endproc
                                        # -- End function
	.globl	_Z12sum_len_hashPKc     # -- Begin function _Z12sum_len_hashPKc
	.p2align	4, 0x90
	.type	_Z12sum_len_hashPKc,@function
_Z12sum_len_hashPKc:                    # @_Z12sum_len_hashPKc
	.cfi_startproc
# %bb.0:
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset rbx, -16
	mov	rbx, rdi
	call	strlen@PLT
	mov	rcx, rax
	shr	rcx
	je	.LBB3_1
# %bb.2:
	mov	dl, byte ptr [rbx]
	test	dl, dl
	je	.LBB3_3
# %bb.4:
	add	rbx, 1
	xor	eax, eax
	.p2align	4, 0x90
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	movsx	rdx, dl
	add	rax, rdx
	movzx	edx, byte ptr [rbx]
	add	rbx, 1
	test	dl, dl
	jne	.LBB3_5
	jmp	.LBB3_6
.LBB3_1:
	xor	eax, eax
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.LBB3_3:
	.cfi_def_cfa_offset 16
	xor	eax, eax
.LBB3_6:
	xor	edx, edx
	div	rcx
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end3:
	.size	_Z12sum_len_hashPKc, .Lfunc_end3-_Z12sum_len_hashPKc
	.cfi_endproc
                                        # -- End function
	.globl	_Z12rolling_hashPKc     # -- Begin function _Z12rolling_hashPKc
	.p2align	4, 0x90
	.type	_Z12rolling_hashPKc,@function
_Z12rolling_hashPKc:                    # @_Z12rolling_hashPKc
	.cfi_startproc
# %bb.0:
	mov	cl, byte ptr [rdi]
	test	cl, cl
	je	.LBB4_1
# %bb.2:
	add	rdi, 1
	xor	eax, eax
	.p2align	4, 0x90
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	lea	rdx, [rax + rax]
	shr	rax, 31
	or	rdx, rax
	movsx	rax, cl
	xor	rax, rdx
	movzx	ecx, byte ptr [rdi]
	add	rdi, 1
	test	cl, cl
	jne	.LBB4_3
# %bb.4:
	ret
.LBB4_1:
	xor	eax, eax
	ret
.Lfunc_end4:
	.size	_Z12rolling_hashPKc, .Lfunc_end4-_Z12rolling_hashPKc
	.cfi_endproc
                                        # -- End function
	.globl	_Z8cmp_slowPKcS0_       # -- Begin function _Z8cmp_slowPKcS0_
	.p2align	4, 0x90
	.type	_Z8cmp_slowPKcS0_,@function
_Z8cmp_slowPKcS0_:                      # @_Z8cmp_slowPKcS0_
	.cfi_startproc
# %bb.0:
	jmp	strcmp@PLT              # TAILCALL
.Lfunc_end5:
	.size	_Z8cmp_slowPKcS0_, .Lfunc_end5-_Z8cmp_slowPKcS0_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function main
.LCPI6_0:
	.zero	16
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r13
	.cfi_def_cfa_offset 40
	push	r12
	.cfi_def_cfa_offset 48
	push	rbx
	.cfi_def_cfa_offset 56
	sub	rsp, 120
	.cfi_def_cfa_offset 176
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rax, qword ptr fs:[40]
	mov	qword ptr [rsp + 112], rax
	mov	edi, 70872
	call	_Znam@PLT
	mov	r13, rax
	mov	edx, 70872
	mov	rdi, rax
	xor	esi, esi
	call	memset@PLT
	lea	rdi, [rip + .L.str]
	lea	rsi, [rip + .L.str.1]
	call	fopen@PLT
	mov	r14, rax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 80], xmm0
	movaps	xmmword ptr [rsp + 64], xmm0
	movaps	xmmword ptr [rsp + 48], xmm0
	movaps	xmmword ptr [rsp + 32], xmm0
	movaps	xmmword ptr [rsp + 16], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 96], 0
	lea	r15, [rip + .L.str.2]
	mov	r12, rsp
	xor	ebp, ebp
	jmp	.LBB6_1
	.p2align	4, 0x90
.LBB6_11:                               #   in Loop: Header=BB6_1 Depth=1
	lea	rsi, [8*rcx + 8]
	add	rsi, r13
	lea	rdx, [8*rcx]
	add	rdx, r13
	mov	qword ptr [rsi], rax
.LBB6_12:                               #   in Loop: Header=BB6_1 Depth=1
	mov	qword ptr [rdx], rax
.LBB6_13:                               #   in Loop: Header=BB6_1 Depth=1
	add	qword ptr [r13 + 8*rcx + 16], 1
	add	ebp, 1
	cmp	ebp, 7919
	je	.LBB6_14
.LBB6_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
.Ltmp0:
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r12
	xor	eax, eax
	call	__isoc99_fscanf@PLT
.Ltmp1:
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	mov	al, byte ptr [rsp]
	test	al, al
	je	.LBB6_3
# %bb.4:                                #   in Loop: Header=BB6_1 Depth=1
	lea	rcx, [rsp + 1]
	xor	ebx, ebx
	.p2align	4, 0x90
.LBB6_5:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lea	rdx, [rbx + rbx]
	shr	rbx, 31
	or	rdx, rbx
	movsx	rbx, al
	xor	rbx, rdx
	movzx	eax, byte ptr [rcx]
	add	rcx, 1
	test	al, al
	jne	.LBB6_5
# %bb.6:                                #   in Loop: Header=BB6_1 Depth=1
	mov	rax, rbx
	movabs	rcx, -5653336737794495161
	mul	rcx
	shr	rdx, 11
	imul	rax, rdx, 2953
	sub	rbx, rax
	jmp	.LBB6_7
	.p2align	4, 0x90
.LBB6_3:                                #   in Loop: Header=BB6_1 Depth=1
	xor	ebx, ebx
.LBB6_7:                                #   in Loop: Header=BB6_1 Depth=1
.Ltmp2:
	mov	edi, 32
	call	_Znwm@PLT
.Ltmp3:
# %bb.8:                                #   in Loop: Header=BB6_1 Depth=1
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 16], r12
	mov	dword ptr [rax + 24], ebp
	lea	rcx, [rbx + 2*rbx]
	mov	rsi, qword ptr [r13 + 8*rcx + 8]
	test	rsi, rsi
	je	.LBB6_11
# %bb.9:                                #   in Loop: Header=BB6_1 Depth=1
	mov	rdx, qword ptr [rsi]
	mov	qword ptr [rsi], rax
	mov	qword ptr [rax + 8], rsi
	test	rdx, rdx
	je	.LBB6_13
# %bb.10:                               #   in Loop: Header=BB6_1 Depth=1
	mov	qword ptr [rax], rdx
	add	rdx, 8
	jmp	.LBB6_12
.LBB6_14:
	xor	ebp, ebp
	lea	r15, [rip + .L.str.3]
	jmp	.LBB6_15
	.p2align	4, 0x90
.LBB6_20:                               #   in Loop: Header=BB6_15 Depth=1
	add	ebp, 1
	cmp	ebp, 295300
	je	.LBB6_21
.LBB6_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_17 Depth 2
	#APP
find_lable:
	#NO_APP
	mov	rbx, qword ptr [r13 + 51192]
	test	rbx, rbx
	je	.LBB6_20
	.p2align	4, 0x90
.LBB6_17:                               #   Parent Loop BB6_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rdi, qword ptr [rbx + 16]
	mov	rsi, r15
	call	strcmp@PLT
	test	eax, eax
	je	.LBB6_20
# %bb.18:                               #   in Loop: Header=BB6_17 Depth=2
	mov	rbx, qword ptr [rbx]
	test	rbx, rbx
	jne	.LBB6_17
	jmp	.LBB6_20
.LBB6_21:
	mov	rdi, r14
	call	fclose@PLT
	mov	rax, qword ptr fs:[40]
	cmp	rax, qword ptr [rsp + 112]
	jne	.LBB6_23
# %bb.22:
	xor	eax, eax
	add	rsp, 120
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB6_23:
	.cfi_def_cfa_offset 176
	call	__stack_chk_fail@PLT
.LBB6_19:
.Ltmp4:
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.Lfunc_end6:
	.size	main, .Lfunc_end6-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table6:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0 # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0   #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0   # >> Call Site 2 <<
	.uleb128 .Ltmp3-.Ltmp0          #   Call between .Ltmp0 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0   #     jumps to .Ltmp4
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0   # >> Call Site 3 <<
	.uleb128 .Lfunc_end6-.Ltmp3     #   Call between .Ltmp3 and .Lfunc_end6
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"./words_alpha.txt"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"aaliis"
	.size	.L.str.3, 7

	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"aGw",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"clang version 10.0.0 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Unwind_Resume
	.addrsig_sym __stack_chk_fail
