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
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	push	rax
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov	rbx, rdi
	call	_Z8len_hashPKc
	test	rax, rax
	je	.LBB3_1
# %bb.2:
	mov	r14, rax
	mov	rdi, rbx
	call	_Z8sum_hashPKc
	xor	edx, edx
	div	r14
	jmp	.LBB3_3
.LBB3_1:
	xor	eax, eax
.LBB3_3:
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
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
	push	rbp
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	push	rax
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -24
	.cfi_offset rbp, -16
	mov	bpl, byte ptr [rdi]
	test	bpl, bpl
	je	.LBB4_1
# %bb.2:
	mov	rbx, rdi
	add	rbx, 1
	xor	edi, edi
	.p2align	4, 0x90
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	call	_ZL3rolmm
	movsx	rdi, bpl
	xor	rdi, rax
	movzx	ebp, byte ptr [rbx]
	add	rbx, 1
	test	bpl, bpl
	jne	.LBB4_3
	jmp	.LBB4_4
.LBB4_1:
	xor	edi, edi
.LBB4_4:
	mov	rax, rdi
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end4:
	.size	_Z12rolling_hashPKc, .Lfunc_end4-_Z12rolling_hashPKc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _ZL3rolmm
	.type	_ZL3rolmm,@function
_ZL3rolmm:                              # @_ZL3rolmm
	.cfi_startproc
# %bb.0:
	lea	rax, [rdi + rdi]
	shr	rdi, 31
	or	rax, rdi
	ret
.Lfunc_end5:
	.size	_ZL3rolmm, .Lfunc_end5-_ZL3rolmm
	.cfi_endproc
                                        # -- End function
	.globl	_Z8cmp_slowPKcS0_       # -- Begin function _Z8cmp_slowPKcS0_
	.p2align	4, 0x90
	.type	_Z8cmp_slowPKcS0_,@function
_Z8cmp_slowPKcS0_:                      # @_Z8cmp_slowPKcS0_
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	call	strcmp@PLT
	pop	rcx
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end6:
	.size	_Z8cmp_slowPKcS0_, .Lfunc_end6-_Z8cmp_slowPKcS0_
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
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
	push	r12
	.cfi_def_cfa_offset 40
	push	rbx
	.cfi_def_cfa_offset 48
	sub	rsp, 128
	.cfi_def_cfa_offset 176
	.cfi_offset rbx, -48
	.cfi_offset r12, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rax, qword ptr fs:[40]
	mov	qword ptr [rsp + 120], rax
	mov	qword ptr [rsp + 8], 0
	lea	r14, [rsp + 8]
	mov	rdi, r14
	call	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC2Ev
	lea	rdi, [rip + .L.str]
	lea	rsi, [rip + .L.str.1]
	call	fopen@PLT
	mov	r12, rax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 96], xmm0
	movaps	xmmword ptr [rsp + 80], xmm0
	movaps	xmmword ptr [rsp + 64], xmm0
	movaps	xmmword ptr [rsp + 48], xmm0
	movaps	xmmword ptr [rsp + 32], xmm0
	movaps	xmmword ptr [rsp + 16], xmm0
	mov	dword ptr [rsp + 112], 0
	lea	r15, [rip + .L.str.2]
	lea	rbx, [rsp + 16]
	xor	ebp, ebp
	.p2align	4, 0x90
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
.Ltmp0:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rbx
	xor	eax, eax
	call	__isoc99_fscanf@PLT
.Ltmp1:
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
.Ltmp2:
	mov	rdi, r14
	mov	rsi, rbx
	mov	edx, ebp
	call	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE6insertES2_i
.Ltmp3:
# %bb.3:                                #   in Loop: Header=BB7_1 Depth=1
	add	ebp, 1
	cmp	ebp, 7919
	jne	.LBB7_1
# %bb.4:
	mov	ebx, 295300
	lea	r14, [rip + .L.str.3]
	lea	rbp, [rsp + 8]
	.p2align	4, 0x90
.LBB7_5:                                # =>This Inner Loop Header: Depth=1
.Ltmp5:
	mov	rdi, rbp
	mov	rsi, r14
	call	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE4findES2_
.Ltmp6:
# %bb.6:                                #   in Loop: Header=BB7_5 Depth=1
	add	ebx, -1
	jne	.LBB7_5
# %bb.7:
	mov	rdi, r12
	call	fclose@PLT
	lea	rdi, [rsp + 8]
	call	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED2Ev
	mov	rax, qword ptr fs:[40]
	cmp	rax, qword ptr [rsp + 120]
	jne	.LBB7_11
# %bb.8:
	xor	eax, eax
	add	rsp, 128
	.cfi_def_cfa_offset 48
	pop	rbx
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB7_11:
	.cfi_def_cfa_offset 176
	call	__stack_chk_fail@PLT
.LBB7_9:
.Ltmp7:
	jmp	.LBB7_10
.LBB7_12:
.Ltmp4:
.LBB7_10:
	mov	rbx, rax
	lea	rdi, [rsp + 8]
	call	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED2Ev
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.Lfunc_end7:
	.size	main, .Lfunc_end7-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table7:
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
	.uleb128 .Ltmp5-.Lfunc_begin0   # >> Call Site 3 <<
	.uleb128 .Ltmp6-.Ltmp5          #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0   #     jumps to .Ltmp7
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0   # >> Call Site 4 <<
	.uleb128 .Lfunc_end7-.Ltmp6     #   Call between .Ltmp6 and .Lfunc_end7
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.section	.text._ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC2Ev,"axG",@progbits,_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC2Ev,comdat
	.weak	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC2Ev # -- Begin function _ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC2Ev
	.p2align	4, 0x90
	.type	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC2Ev,@function
_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC2Ev: # @_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC2Ev
	.cfi_startproc
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	r14, rdi
	mov	edi, 70872
	call	_Znam@PLT
	mov	r15, rax
	xor	ebx, ebx
	.p2align	4, 0x90
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	lea	rdi, [r15 + rbx]
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEEC2Ev
	add	rbx, 24
	cmp	rbx, 70872
	jne	.LBB8_1
# %bb.2:
	mov	qword ptr [r14], r15
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end8:
	.size	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC2Ev, .Lfunc_end8-_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE6insertES2_i,"axG",@progbits,_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE6insertES2_i,comdat
	.weak	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE6insertES2_i # -- Begin function _ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE6insertES2_i
	.p2align	4, 0x90
	.type	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE6insertES2_i,@function
_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE6insertES2_i: # @_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE6insertES2_i
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r12
	.cfi_def_cfa_offset 40
	push	rbx
	.cfi_def_cfa_offset 48
	sub	rsp, 32
	.cfi_def_cfa_offset 80
	.cfi_offset rbx, -48
	.cfi_offset r12, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r14d, edx
	mov	r12, rsi
	mov	r15, rdi
	mov	rax, qword ptr fs:[40]
	mov	qword ptr [rsp + 24], rax
	mov	rdi, rsi
	call	_Z12rolling_hashPKc
	mov	rbx, rax
	movabs	rcx, -5653336737794495161
	mul	rcx
	shr	rdx, 11
	imul	rax, rdx, 2953
	sub	rbx, rax
	lea	rbp, [rbx + 2*rbx]
	shl	rbp, 3
	add	rbp, qword ptr [r15]
	lea	rdi, [rsp + 8]
	mov	rsi, r12
	mov	edx, r14d
	call	_ZN11HashTableNS6Pair_tIPKciEC2ES2_i
	mov	rsi, qword ptr [rsp + 8]
	mov	edx, dword ptr [rsp + 16]
	mov	rdi, rbp
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backES5_
	mov	rax, qword ptr fs:[40]
	cmp	rax, qword ptr [rsp + 24]
	jne	.LBB9_2
# %bb.1:
	mov	rax, rbx
	add	rsp, 32
	.cfi_def_cfa_offset 48
	pop	rbx
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB9_2:
	.cfi_def_cfa_offset 80
	call	__stack_chk_fail@PLT
.Lfunc_end9:
	.size	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE6insertES2_i, .Lfunc_end9-_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE6insertES2_i
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE4findES2_,"axG",@progbits,_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE4findES2_,comdat
	.weak	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE4findES2_ # -- Begin function _ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE4findES2_
	.p2align	4, 0x90
	.type	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE4findES2_,@function
_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE4findES2_: # @_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE4findES2_
	.cfi_startproc
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	push	rax
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, rsi
	call	_Z12rolling_hashPKc
	mov	rcx, rax
	movabs	rdx, -5653336737794495161
	mul	rdx
	shr	rdx, 11
	imul	rax, rdx, 2953
	sub	rcx, rax
	lea	rdi, [rcx + 2*rcx]
	shl	rdi, 3
	add	rdi, qword ptr [rbx]
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4headEv
	test	rax, rax
	je	.LBB10_4
# %bb.1:
	mov	rbx, rax
	.p2align	4, 0x90
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	mov	rdi, qword ptr [rbx + 16]
	mov	rsi, r14
	call	_Z8cmp_slowPKcS0_
	test	eax, eax
	je	.LBB10_5
# %bb.3:                                #   in Loop: Header=BB10_2 Depth=1
	mov	rdi, rbx
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node4nextEv
	mov	rbx, rax
	test	rax, rax
	jne	.LBB10_2
.LBB10_4:
	xor	ebx, ebx
.LBB10_5:
	mov	rax, rbx
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end10:
	.size	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE4findES2_, .Lfunc_end10-_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE4findES2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED2Ev,"axG",@progbits,_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED2Ev,comdat
	.weak	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED2Ev # -- Begin function _ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED2Ev
	.p2align	4, 0x90
	.type	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED2Ev,@function
_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED2Ev: # @_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED2Ev
	.cfi_startproc
# %bb.0:
	ret
.Lfunc_end11:
	.size	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED2Ev, .Lfunc_end11-_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEEC2Ev,"axG",@progbits,_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEEC2Ev,comdat
	.weak	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEEC2Ev # -- Begin function _ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEEC2Ev
	.p2align	4, 0x90
	.type	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEEC2Ev,@function
_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEEC2Ev: # @_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEEC2Ev
	.cfi_startproc
# %bb.0:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 16], 0
	ret
.Lfunc_end12:
	.size	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEEC2Ev, .Lfunc_end12-_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backES5_,"axG",@progbits,_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backES5_,comdat
	.weak	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backES5_ # -- Begin function _ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backES5_
	.p2align	4, 0x90
	.type	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backES5_,@function
_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backES5_: # @_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backES5_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	rbx
	.cfi_def_cfa_offset 40
	push	rax
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r15d, edx
	mov	rbx, rsi
	mov	r14, rdi
	mov	edi, 32
	call	_Znwm@PLT
	mov	rbp, rax
	mov	rdi, rax
	mov	rsi, rbx
	mov	edx, r15d
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4NodeC2ES5_
	mov	rdi, r14
	mov	rsi, rbp
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backEPNS6_4NodeE
	add	rsp, 8
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end13:
	.size	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backES5_, .Lfunc_end13-_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backES5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11HashTableNS6Pair_tIPKciEC2ES2_i,"axG",@progbits,_ZN11HashTableNS6Pair_tIPKciEC2ES2_i,comdat
	.weak	_ZN11HashTableNS6Pair_tIPKciEC2ES2_i # -- Begin function _ZN11HashTableNS6Pair_tIPKciEC2ES2_i
	.p2align	4, 0x90
	.type	_ZN11HashTableNS6Pair_tIPKciEC2ES2_i,@function
_ZN11HashTableNS6Pair_tIPKciEC2ES2_i:   # @_ZN11HashTableNS6Pair_tIPKciEC2ES2_i
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rdi], rsi
	mov	dword ptr [rdi + 8], edx
	ret
.Lfunc_end14:
	.size	_ZN11HashTableNS6Pair_tIPKciEC2ES2_i, .Lfunc_end14-_ZN11HashTableNS6Pair_tIPKciEC2ES2_i
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backEPNS6_4NodeE,"axG",@progbits,_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backEPNS6_4NodeE,comdat
	.weak	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backEPNS6_4NodeE # -- Begin function _ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backEPNS6_4NodeE
	.p2align	4, 0x90
	.type	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backEPNS6_4NodeE,@function
_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backEPNS6_4NodeE: # @_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backEPNS6_4NodeE
	.cfi_startproc
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	push	rax
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, qword ptr [rdi + 8]
	test	rdi, rdi
	je	.LBB15_2
# %bb.1:
	mov	rsi, r14
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node12insert_afterEPS7_
	jmp	.LBB15_3
.LBB15_2:
	mov	qword ptr [rbx + 8], r14
	mov	qword ptr [rbx], r14
.LBB15_3:
	add	qword ptr [rbx + 16], 1
	mov	rax, r14
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end15:
	.size	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backEPNS6_4NodeE, .Lfunc_end15-_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backEPNS6_4NodeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4NodeC2ES5_,"axG",@progbits,_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4NodeC2ES5_,comdat
	.weak	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4NodeC2ES5_ # -- Begin function _ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4NodeC2ES5_
	.p2align	4, 0x90
	.type	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4NodeC2ES5_,@function
_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4NodeC2ES5_: # @_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4NodeC2ES5_
	.cfi_startproc
# %bb.0:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 16], rsi
	mov	dword ptr [rdi + 24], edx
	ret
.Lfunc_end16:
	.size	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4NodeC2ES5_, .Lfunc_end16-_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4NodeC2ES5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node12insert_afterEPS7_,"axG",@progbits,_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node12insert_afterEPS7_,comdat
	.weak	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node12insert_afterEPS7_ # -- Begin function _ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node12insert_afterEPS7_
	.p2align	4, 0x90
	.type	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node12insert_afterEPS7_,@function
_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node12insert_afterEPS7_: # @_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node12insert_afterEPS7_
	.cfi_startproc
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	push	rax
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov	rbx, rsi
	mov	r14, qword ptr [rdi]
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node6attachEPS7_
	test	r14, r14
	je	.LBB17_2
# %bb.1:
	mov	rdi, rbx
	mov	rsi, r14
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node6attachEPS7_
.LBB17_2:
	mov	rax, rbx
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end17:
	.size	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node12insert_afterEPS7_, .Lfunc_end17-_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node12insert_afterEPS7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node6attachEPS7_,"axG",@progbits,_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node6attachEPS7_,comdat
	.weak	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node6attachEPS7_ # -- Begin function _ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node6attachEPS7_
	.p2align	4, 0x90
	.type	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node6attachEPS7_,@function
_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node6attachEPS7_: # @_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node6attachEPS7_
	.cfi_startproc
# %bb.0:
	mov	rax, rsi
	mov	qword ptr [rdi], rsi
	mov	qword ptr [rsi + 8], rdi
	ret
.Lfunc_end18:
	.size	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node6attachEPS7_, .Lfunc_end18-_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node6attachEPS7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4headEv,"axG",@progbits,_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4headEv,comdat
	.weak	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4headEv # -- Begin function _ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4headEv
	.p2align	4, 0x90
	.type	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4headEv,@function
_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4headEv: # @_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4headEv
	.cfi_startproc
# %bb.0:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end19:
	.size	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4headEv, .Lfunc_end19-_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4headEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node4nextEv,"axG",@progbits,_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node4nextEv,comdat
	.weak	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node4nextEv # -- Begin function _ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node4nextEv
	.p2align	4, 0x90
	.type	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node4nextEv,@function
_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node4nextEv: # @_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node4nextEv
	.cfi_startproc
# %bb.0:
	mov	rax, qword ptr [rdi]
	ret
.Lfunc_end20:
	.size	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node4nextEv, .Lfunc_end20-_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node4nextEv
	.cfi_endproc
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
