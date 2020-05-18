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
# %bb.6:
	xor	edx, edx
	div	rcx
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.LBB3_1:
	.cfi_def_cfa_offset 16
	xor	eax, eax
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.LBB3_3:
	.cfi_def_cfa_offset 16
	xor	eax, eax
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
	.globl	_Z13one_at_a_timePKc    # -- Begin function _Z13one_at_a_timePKc
	.p2align	4, 0x90
	.type	_Z13one_at_a_timePKc,@function
_Z13one_at_a_timePKc:                   # @_Z13one_at_a_timePKc
	.cfi_startproc
# %bb.0:
	mov	cl, byte ptr [rdi]
	test	cl, cl
	je	.LBB5_1
# %bb.2:
	add	rdi, 1
	xor	eax, eax
	.p2align	4, 0x90
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	movsx	rcx, cl
	add	rcx, rax
	mov	rdx, rcx
	shl	rdx, 10
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 6
	xor	rax, rdx
	movzx	ecx, byte ptr [rdi]
	add	rdi, 1
	test	cl, cl
	jne	.LBB5_3
# %bb.4:
	lea	rax, [rax + 8*rax]
	jmp	.LBB5_5
.LBB5_1:
	xor	eax, eax
.LBB5_5:
	mov	rcx, rax
	shr	rcx, 11
	xor	rcx, rax
	mov	rax, rcx
	shl	rax, 15
	add	rax, rcx
	ret
.Lfunc_end5:
	.size	_Z13one_at_a_timePKc, .Lfunc_end5-_Z13one_at_a_timePKc
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
	mov	r12, rsp
	xor	r15d, r15d
	jmp	.LBB6_1
	.p2align	4, 0x90
.LBB6_17:                               #   in Loop: Header=BB6_1 Depth=1
	lea	rsi, [8*rcx + 8]
	add	rsi, r13
	lea	rdx, [8*rcx]
	add	rdx, r13
	mov	qword ptr [rsi], rax
.LBB6_18:                               #   in Loop: Header=BB6_1 Depth=1
	mov	qword ptr [rdx], rax
.LBB6_19:                               #   in Loop: Header=BB6_1 Depth=1
	add	qword ptr [r13 + 8*rcx + 16], 1
	add	r15d, 1
	cmp	r15d, 400000
	je	.LBB6_4
.LBB6_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_11 Depth 2
.Ltmp0:
	mov	rdi, r14
	lea	rsi, [rip + .L.str.2]
	mov	rdx, r12
	xor	eax, eax
	call	__isoc99_fscanf@PLT
.Ltmp1:
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	mov	cl, byte ptr [rsp]
	test	cl, cl
	je	.LBB6_3
# %bb.10:                               #   in Loop: Header=BB6_1 Depth=1
	lea	rax, [rsp + 1]
	xor	edx, edx
	.p2align	4, 0x90
.LBB6_11:                               #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsx	rcx, cl
	add	rcx, rdx
	mov	rsi, rcx
	shl	rsi, 10
	add	rsi, rcx
	mov	rdx, rsi
	shr	rdx, 6
	xor	rdx, rsi
	movzx	ecx, byte ptr [rax]
	add	rax, 1
	test	cl, cl
	jne	.LBB6_11
# %bb.12:                               #   in Loop: Header=BB6_1 Depth=1
	lea	rax, [rdx + 8*rdx]
	jmp	.LBB6_13
	.p2align	4, 0x90
.LBB6_3:                                #   in Loop: Header=BB6_1 Depth=1
	xor	eax, eax
.LBB6_13:                               #   in Loop: Header=BB6_1 Depth=1
	mov	rcx, rax
	shr	rcx, 11
	xor	rcx, rax
	mov	rbx, rcx
	shl	rbx, 15
	add	rbx, rcx
	mov	rax, rbx
	movabs	rcx, -5653336737794495161
	mul	rcx
	mov	rbp, rdx
.Ltmp2:
	mov	edi, 32
	call	_Znwm@PLT
.Ltmp3:
# %bb.14:                               #   in Loop: Header=BB6_1 Depth=1
	shr	rbp, 11
	imul	rcx, rbp, 2953
	sub	rbx, rcx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 16], r12
	mov	dword ptr [rax + 24], r15d
	lea	rcx, [rbx + 2*rbx]
	mov	rsi, qword ptr [r13 + 8*rcx + 8]
	test	rsi, rsi
	je	.LBB6_17
# %bb.15:                               #   in Loop: Header=BB6_1 Depth=1
	mov	rdx, qword ptr [rsi]
	mov	qword ptr [rsi], rax
	mov	qword ptr [rax + 8], rsi
	test	rdx, rdx
	je	.LBB6_19
# %bb.16:                               #   in Loop: Header=BB6_1 Depth=1
	mov	qword ptr [rax], rdx
	add	rdx, 8
	jmp	.LBB6_18
.LBB6_4:
	mov	rbp, qword ptr [r13 + 47952]
	test	rbp, rbp
	je	.LBB6_8
# %bb.5:
	lea	rbx, [rip + .L.str.3]
	.p2align	4, 0x90
.LBB6_6:                                # =>This Inner Loop Header: Depth=1
	mov	rdi, qword ptr [rbp + 16]
	mov	rsi, rbx
	call	strcmp@PLT
	test	eax, eax
	je	.LBB6_8
# %bb.7:                                #   in Loop: Header=BB6_6 Depth=1
	mov	rbp, qword ptr [rbp]
	test	rbp, rbp
	jne	.LBB6_6
.LBB6_8:
	mov	rdi, r14
	call	fclose@PLT
	mov	rax, qword ptr fs:[40]
	cmp	rax, qword ptr [rsp + 112]
	jne	.LBB6_21
# %bb.9:
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
.LBB6_21:
	.cfi_def_cfa_offset 176
	call	__stack_chk_fail@PLT
.LBB6_20:
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
