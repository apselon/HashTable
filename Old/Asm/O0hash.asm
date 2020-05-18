	.text
	.intel_syntax noprefix
	.file	"main.cpp"
	.globl	_Z7id_hashPKc           # -- Begin function _Z7id_hashPKc
	.p2align	4, 0x90
	.type	_Z7id_hashPKc,@function
_Z7id_hashPKc:                          # @_Z7id_hashPKc
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	eax, 1
	pop	rbp
	.cfi_def_cfa rsp, 8
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], 0
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	movsx	rax, byte ptr [rax]
	add	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 16], rax
	jmp	.LBB1_1
.LBB1_3:
	mov	rax, qword ptr [rbp - 16]
	pop	rbp
	.cfi_def_cfa rsp, 8
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	strlen@PLT
	shr	rax, 1
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 16], rdi
	mov	rdi, qword ptr [rbp - 16]
	call	_Z8len_hashPKc
	mov	qword ptr [rbp - 24], rax
	cmp	qword ptr [rbp - 24], 0
	je	.LBB3_2
# %bb.1:
	mov	rdi, qword ptr [rbp - 16]
	call	_Z8sum_hashPKc
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 24]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB3_3
.LBB3_2:
	mov	qword ptr [rbp - 8], 0
.LBB3_3:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
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
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], 0
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.LBB4_3
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	mov	rdi, qword ptr [rbp - 16]
	mov	esi, 1
	call	_ZL3rolmm
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 8], rdx
	movsx	rcx, byte ptr [rcx]
	xor	rax, rcx
	mov	qword ptr [rbp - 16], rax
	jmp	.LBB4_1
.LBB4_3:
	mov	rax, qword ptr [rbp - 16]
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	rax, qword ptr [rbp - 24]
	and	rax, 31
	mov	qword ptr [rbp - 24], rax
	cmp	qword ptr [rbp - 24], 0
	jne	.LBB5_2
# %bb.1:
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB5_3
.LBB5_2:
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 24]
                                        # kill: def $cl killed $rcx
	shl	rax, cl
	mov	rdx, qword ptr [rbp - 16]
	mov	esi, 32
	sub	rsi, qword ptr [rbp - 24]
	mov	rcx, rsi
                                        # kill: def $cl killed $rcx
	shr	rdx, cl
	or	rax, rdx
	mov	qword ptr [rbp - 8], rax
.LBB5_3:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	call	strcmp@PLT
	mov	dword ptr [rbp - 20], eax
	mov	eax, dword ptr [rbp - 20]
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
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
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 176
	mov	rax, qword ptr fs:[40]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 124], 0
	mov	qword ptr [rbp - 120], 0
	lea	rdi, [rbp - 120]
	call	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC2Ev
.Ltmp0:
	lea	rdi, [rip + .L.str]
	lea	rsi, [rip + .L.str.1]
	call	fopen@PLT
.Ltmp1:
	mov	qword ptr [rbp - 168], rax # 8-byte Spill
	jmp	.LBB7_1
.LBB7_1:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 168] # 8-byte Reload
	mov	qword ptr [rbp - 136], rax
	lea	rcx, [rbp - 112]
	mov	rdi, rcx
	mov	edx, 100
	call	memset@PLT
	mov	dword ptr [rbp - 152], 0
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 152], 7919
	jge	.LBB7_8
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=1
	mov	rdi, qword ptr [rbp - 136]
.Ltmp6:
	lea	rsi, [rip + .L.str.2]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	lea	rdx, [rbp - 112]
	call	__isoc99_fscanf@PLT
.Ltmp7:
	jmp	.LBB7_4
.LBB7_4:                                #   in Loop: Header=BB7_2 Depth=1
	mov	edx, dword ptr [rbp - 152]
.Ltmp8:
	lea	rdi, [rbp - 120]
	lea	rsi, [rbp - 112]
	call	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE6insertES2_i
.Ltmp9:
	jmp	.LBB7_5
.LBB7_5:                                #   in Loop: Header=BB7_2 Depth=1
	jmp	.LBB7_6
.LBB7_6:                                #   in Loop: Header=BB7_2 Depth=1
	mov	eax, dword ptr [rbp - 152]
	add	eax, 1
	mov	dword ptr [rbp - 152], eax
	jmp	.LBB7_2
.LBB7_7:
.Ltmp10:
                                        # kill: def $edx killed $edx killed $rdx
	mov	qword ptr [rbp - 144], rax
	mov	dword ptr [rbp - 148], edx
	lea	rdi, [rbp - 120]
	call	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED2Ev
	jmp	.LBB7_16
.LBB7_8:
	mov	dword ptr [rbp - 156], 0
.LBB7_9:                                # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 156], 295300
	jge	.LBB7_13
# %bb.10:                               #   in Loop: Header=BB7_9 Depth=1
.Ltmp4:
	lea	rsi, [rip + .L.str.3]
	lea	rdi, [rbp - 120]
	call	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE4findES2_
.Ltmp5:
	jmp	.LBB7_11
.LBB7_11:                               #   in Loop: Header=BB7_9 Depth=1
	jmp	.LBB7_12
.LBB7_12:                               #   in Loop: Header=BB7_9 Depth=1
	mov	eax, dword ptr [rbp - 156]
	add	eax, 1
	mov	dword ptr [rbp - 156], eax
	jmp	.LBB7_9
.LBB7_13:
	mov	rdi, qword ptr [rbp - 136]
.Ltmp2:
	call	fclose@PLT
.Ltmp3:
	jmp	.LBB7_14
.LBB7_14:
	mov	dword ptr [rbp - 124], 0
	lea	rdi, [rbp - 120]
	call	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED2Ev
	mov	eax, dword ptr [rbp - 124]
	mov	rcx, qword ptr fs:[40]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 172], eax # 4-byte Spill
	jne	.LBB7_17
# %bb.15:
	mov	eax, dword ptr [rbp - 172] # 4-byte Reload
	add	rsp, 176
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.LBB7_16:
	.cfi_def_cfa rbp, 16
	mov	rdi, qword ptr [rbp - 144]
	call	_Unwind_Resume@PLT
.LBB7_17:
	call	__stack_chk_fail@PLT
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
	.uleb128 .Ltmp1-.Ltmp0          #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp10-.Lfunc_begin0  #     jumps to .Ltmp10
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0   # >> Call Site 3 <<
	.uleb128 .Ltmp6-.Ltmp1          #   Call between .Ltmp1 and .Ltmp6
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0   # >> Call Site 4 <<
	.uleb128 .Ltmp3-.Ltmp6          #   Call between .Ltmp6 and .Ltmp3
	.uleb128 .Ltmp10-.Lfunc_begin0  #     jumps to .Ltmp10
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0   # >> Call Site 5 <<
	.uleb128 .Lfunc_end7-.Ltmp3     #   Call between .Ltmp3 and .Lfunc_end7
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
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 80
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	edi, 70872
	mov	qword ptr [rbp - 32], rax # 8-byte Spill
	call	_Znam@PLT
	mov	rcx, rax
	mov	rdx, rcx
	add	rdx, 70872
	mov	rsi, rcx
	mov	qword ptr [rbp - 40], rax # 8-byte Spill
	mov	qword ptr [rbp - 48], rcx # 8-byte Spill
	mov	qword ptr [rbp - 56], rdx # 8-byte Spill
	mov	qword ptr [rbp - 64], rsi # 8-byte Spill
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
.Ltmp11:
	mov	rax, qword ptr [rbp - 64] # 8-byte Reload
	mov	rdi, rax
	mov	qword ptr [rbp - 72], rax # 8-byte Spill
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEEC2Ev
.Ltmp12:
	jmp	.LBB8_2
.LBB8_2:                                #   in Loop: Header=BB8_1 Depth=1
	mov	rax, qword ptr [rbp - 72] # 8-byte Reload
	add	rax, 24
	mov	rcx, qword ptr [rbp - 56] # 8-byte Reload
	cmp	rax, rcx
	mov	qword ptr [rbp - 64], rax # 8-byte Spill
	jne	.LBB8_1
# %bb.3:
	mov	rax, qword ptr [rbp - 32] # 8-byte Reload
	mov	rcx, qword ptr [rbp - 48] # 8-byte Reload
	mov	qword ptr [rax], rcx
	add	rsp, 80
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.LBB8_4:
	.cfi_def_cfa rbp, 16
.Ltmp13:
                                        # kill: def $edx killed $edx killed $rdx
	mov	qword ptr [rbp - 16], rax
	mov	dword ptr [rbp - 20], edx
	mov	rdi, qword ptr [rbp - 40] # 8-byte Reload
	call	_ZdaPv@PLT
# %bb.5:
	mov	rdi, qword ptr [rbp - 16]
	call	_Unwind_Resume@PLT
.Lfunc_end8:
	.size	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC2Ev, .Lfunc_end8-_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table8:
.Lexception1:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1 # >> Call Site 1 <<
	.uleb128 .Ltmp11-.Lfunc_begin1  #   Call between .Lfunc_begin1 and .Ltmp11
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin1  # >> Call Site 2 <<
	.uleb128 .Ltmp12-.Ltmp11        #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin1  #     jumps to .Ltmp13
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin1  # >> Call Site 3 <<
	.uleb128 .Lfunc_end8-.Ltmp12    #   Call between .Ltmp12 and .Lfunc_end8
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end1:
	.p2align	2
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
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 96
	mov	rax, qword ptr fs:[40]
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [rbp - 32], rdi
	mov	qword ptr [rbp - 40], rsi
	mov	dword ptr [rbp - 44], edx
	mov	rax, qword ptr [rbp - 32]
	mov	rdi, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 64], rax # 8-byte Spill
	call	_Z12rolling_hashPKc
	movabs	rcx, -5653336737794495161
	mov	qword ptr [rbp - 72], rax # 8-byte Spill
	mul	rcx
	shr	rdx, 11
	imul	rax, rdx, 2953
	mov	rcx, qword ptr [rbp - 72] # 8-byte Reload
	sub	rcx, rax
	mov	qword ptr [rbp - 56], rcx
	mov	rax, qword ptr [rbp - 64] # 8-byte Reload
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 56]
	lea	rcx, [rcx + 2*rcx]
	lea	rdi, [rax + 8*rcx]
	mov	rsi, qword ptr [rbp - 40]
	mov	edx, dword ptr [rbp - 44]
	lea	rax, [rbp - 24]
	mov	qword ptr [rbp - 80], rdi # 8-byte Spill
	mov	rdi, rax
	call	_ZN11HashTableNS6Pair_tIPKciEC2ES2_i
	mov	rsi, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 16]
	mov	rdi, qword ptr [rbp - 80] # 8-byte Reload
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backES5_
	mov	rcx, qword ptr [rbp - 56]
	mov	rsi, qword ptr fs:[40]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rsi, rdi
	mov	qword ptr [rbp - 88], rcx # 8-byte Spill
	jne	.LBB9_2
# %bb.1:
	mov	rax, qword ptr [rbp - 88] # 8-byte Reload
	add	rsp, 96
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.LBB9_2:
	.cfi_def_cfa rbp, 16
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	rax, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 48], rax # 8-byte Spill
	call	_Z12rolling_hashPKc
	xor	ecx, ecx
	mov	edx, ecx
	mov	esi, 2953
	div	rsi
	mov	qword ptr [rbp - 32], rdx
	mov	rdx, qword ptr [rbp - 48] # 8-byte Reload
	mov	rsi, qword ptr [rdx]
	imul	rdi, qword ptr [rbp - 32], 24
	add	rsi, rdi
	mov	rdi, rsi
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4headEv
	mov	qword ptr [rbp - 40], rax
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 40], 0
	je	.LBB10_5
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 40]
	mov	rdi, qword ptr [rax + 16]
	mov	rsi, qword ptr [rbp - 24]
	call	_Z8cmp_slowPKcS0_
	cmp	eax, 0
	jne	.LBB10_4
# %bb.3:
	mov	rax, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB10_6
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	mov	rdi, qword ptr [rbp - 40]
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node4nextEv
	mov	qword ptr [rbp - 40], rax
	jmp	.LBB10_1
.LBB10_5:
	mov	qword ptr [rbp - 8], 0
.LBB10_6:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 48
	pop	rbp
	.cfi_def_cfa rsp, 8
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	.cfi_def_cfa rsp, 8
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	mov	qword ptr [rax + 8], 0
	mov	qword ptr [rax + 16], 0
	pop	rbp
	.cfi_def_cfa rsp, 8
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
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 112
	mov	rax, qword ptr fs:[40]
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [rbp - 24], rsi
	mov	dword ptr [rbp - 16], edx
	mov	qword ptr [rbp - 56], rdi
	mov	rdi, qword ptr [rbp - 56]
	mov	eax, 32
	mov	qword ptr [rbp - 80], rdi # 8-byte Spill
	mov	rdi, rax
	call	_Znwm@PLT
	mov	rcx, rax
	mov	rsi, rax
	movups	xmm0, xmmword ptr [rbp - 24]
	movaps	xmmword ptr [rbp - 48], xmm0
	mov	rdi, qword ptr [rbp - 48]
	mov	edx, dword ptr [rbp - 40]
.Ltmp14:
	mov	qword ptr [rbp - 88], rdi # 8-byte Spill
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 88] # 8-byte Reload
	mov	qword ptr [rbp - 96], rsi # 8-byte Spill
	mov	rsi, rax
	mov	qword ptr [rbp - 104], rcx # 8-byte Spill
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4NodeC2ES5_
.Ltmp15:
	jmp	.LBB13_1
.LBB13_1:
	mov	rdi, qword ptr [rbp - 80] # 8-byte Reload
	mov	rsi, qword ptr [rbp - 96] # 8-byte Reload
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backEPNS6_4NodeE
	mov	rcx, qword ptr fs:[40]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	qword ptr [rbp - 112], rax # 8-byte Spill
	jne	.LBB13_5
# %bb.2:
	mov	rax, qword ptr [rbp - 112] # 8-byte Reload
	add	rsp, 112
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.LBB13_3:
	.cfi_def_cfa rbp, 16
.Ltmp16:
                                        # kill: def $edx killed $edx killed $rdx
	mov	qword ptr [rbp - 64], rax
	mov	dword ptr [rbp - 68], edx
	mov	rdi, qword ptr [rbp - 104] # 8-byte Reload
	call	_ZdlPv@PLT
# %bb.4:
	mov	rdi, qword ptr [rbp - 64]
	call	_Unwind_Resume@PLT
.LBB13_5:
	call	__stack_chk_fail@PLT
.Lfunc_end13:
	.size	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backES5_, .Lfunc_end13-_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backES5_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table13:
.Lexception2:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2 # >> Call Site 1 <<
	.uleb128 .Ltmp14-.Lfunc_begin2  #   Call between .Lfunc_begin2 and .Ltmp14
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin2  # >> Call Site 2 <<
	.uleb128 .Ltmp15-.Ltmp14        #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin2  #     jumps to .Ltmp16
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin2  # >> Call Site 3 <<
	.uleb128 .Lfunc_end13-.Ltmp15   #   Call between .Ltmp15 and .Lfunc_end13
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end2:
	.p2align	2
                                        # -- End function
	.section	.text._ZN11HashTableNS6Pair_tIPKciEC2ES2_i,"axG",@progbits,_ZN11HashTableNS6Pair_tIPKciEC2ES2_i,comdat
	.weak	_ZN11HashTableNS6Pair_tIPKciEC2ES2_i # -- Begin function _ZN11HashTableNS6Pair_tIPKciEC2ES2_i
	.p2align	4, 0x90
	.type	_ZN11HashTableNS6Pair_tIPKciEC2ES2_i,@function
_ZN11HashTableNS6Pair_tIPKciEC2ES2_i:   # @_ZN11HashTableNS6Pair_tIPKciEC2ES2_i
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], edx
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 16]
	mov	qword ptr [rax], rcx
	mov	edx, dword ptr [rbp - 20]
	mov	dword ptr [rax + 8], edx
	pop	rbp
	.cfi_def_cfa rsp, 8
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	mov	qword ptr [rbp - 24], rax # 8-byte Spill
	je	.LBB15_2
# %bb.1:
	mov	rax, qword ptr [rbp - 24] # 8-byte Reload
	mov	rdi, qword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 16]
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node12insert_afterEPS7_
	jmp	.LBB15_3
.LBB15_2:
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 24] # 8-byte Reload
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rcx], rax
.LBB15_3:
	mov	rax, qword ptr [rbp - 24] # 8-byte Reload
	mov	rcx, qword ptr [rax + 16]
	add	rcx, 1
	mov	qword ptr [rax + 16], rcx
	mov	rax, qword ptr [rbp - 16]
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	rax, qword ptr fs:[40]
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [rbp - 24], rsi
	mov	dword ptr [rbp - 16], edx
	mov	qword ptr [rbp - 32], rdi
	mov	rax, qword ptr [rbp - 32]
	mov	qword ptr [rax], 0
	mov	qword ptr [rax + 8], 0
	movups	xmm0, xmmword ptr [rbp - 24]
	movups	xmmword ptr [rax + 16], xmm0
	mov	rax, qword ptr fs:[40]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	.LBB16_2
# %bb.1:
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.LBB16_2:
	.cfi_def_cfa rbp, 16
	call	__stack_chk_fail@PLT
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 24], rcx
	mov	rsi, qword ptr [rbp - 16]
	mov	rdi, rax
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node6attachEPS7_
	cmp	qword ptr [rbp - 24], 0
	je	.LBB17_2
# %bb.1:
	mov	rdi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 24]
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node6attachEPS7_
.LBB17_2:
	mov	rax, qword ptr [rbp - 16]
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 16]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 16]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 16]
	pop	rbp
	.cfi_def_cfa rsp, 8
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	pop	rbp
	.cfi_def_cfa rsp, 8
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	pop	rbp
	.cfi_def_cfa rsp, 8
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
	.addrsig_sym _Z8sum_hashPKc
	.addrsig_sym _Z8len_hashPKc
	.addrsig_sym strlen
	.addrsig_sym _Z12rolling_hashPKc
	.addrsig_sym _ZL3rolmm
	.addrsig_sym _Z8cmp_slowPKcS0_
	.addrsig_sym strcmp
	.addrsig_sym fopen
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym __isoc99_fscanf
	.addrsig_sym _ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE6insertES2_i
	.addrsig_sym _ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE4findES2_
	.addrsig_sym fclose
	.addrsig_sym _Znam
	.addrsig_sym _ZdaPv
	.addrsig_sym _ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backES5_
	.addrsig_sym _ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backEPNS6_4NodeE
	.addrsig_sym _Znwm
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node12insert_afterEPS7_
	.addrsig_sym _ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node6attachEPS7_
	.addrsig_sym _ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4headEv
	.addrsig_sym _ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node4nextEv
	.addrsig_sym _Unwind_Resume
	.addrsig_sym __stack_chk_fail
