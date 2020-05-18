	.file	"main.cpp"
	.intel_syntax noprefix
	.text
	.globl	_Z7id_hashPKc
	.type	_Z7id_hashPKc, @function
_Z7id_hashPKc:
.LFB620:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	eax, 1
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	_Z7id_hashPKc, .-_Z7id_hashPKc
	.globl	_Z8sum_hashPKc
	.type	_Z8sum_hashPKc, @function
_Z8sum_hashPKc:
.LFB621:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -8[rbp], 0
.L5:
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L4
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -24[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	movsx	rax, al
	add	QWORD PTR -8[rbp], rax
	jmp	.L5
.L4:
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	_Z8sum_hashPKc, .-_Z8sum_hashPKc
	.globl	_Z8len_hashPKc
	.type	_Z8len_hashPKc, @function
_Z8len_hashPKc:
.LFB622:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	strlen@PLT
	shr	rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	_Z8len_hashPKc, .-_Z8len_hashPKc
	.globl	_Z12sum_len_hashPKc
	.type	_Z12sum_len_hashPKc, @function
_Z12sum_len_hashPKc:
.LFB623:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_Z8len_hashPKc
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L10
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_Z8sum_hashPKc
	mov	edx, 0
	div	QWORD PTR -8[rbp]
	jmp	.L11
.L10:
	mov	eax, 0
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	_Z12sum_len_hashPKc, .-_Z12sum_len_hashPKc
	.type	_ZL3rolmm, @function
_ZL3rolmm:
.LFB624:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	and	QWORD PTR -16[rbp], 31
	cmp	QWORD PTR -16[rbp], 0
	jne	.L13
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L14
.L13:
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, eax
	mov	rax, QWORD PTR -8[rbp]
	mov	ecx, edx
	sal	rax, cl
	mov	rsi, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, 32
	sub	edx, eax
	mov	eax, edx
	mov	rdx, QWORD PTR -8[rbp]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	or	rax, rsi
.L14:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	_ZL3rolmm, .-_ZL3rolmm
	.globl	_Z12rolling_hashPKc
	.type	_Z12rolling_hashPKc, @function
_Z12rolling_hashPKc:
.LFB625:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -8[rbp], 0
.L17:
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L16
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	_ZL3rolmm
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	lea	rcx, 1[rax]
	mov	QWORD PTR -24[rbp], rcx
	movzx	eax, BYTE PTR [rax]
	movsx	rax, al
	xor	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	jmp	.L17
.L16:
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	_Z12rolling_hashPKc, .-_Z12rolling_hashPKc
	.globl	_Z8cmp_slowPKcS0_
	.type	_Z8cmp_slowPKcS0_, @function
_Z8cmp_slowPKcS0_:
.LFB626:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	_Z8cmp_slowPKcS0_, .-_Z8cmp_slowPKcS0_
	.section	.text._ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC2Ev,"axG",@progbits,_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC5Ev,comdat
	.align 2
	.weak	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC2Ev
	.type	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC2Ev, @function
_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC2Ev:
.LFB629:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r13
	push	r12
	push	rbx
	sub	rsp, 24
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	mov	QWORD PTR -40[rbp], rdi
	mov	edi, 70872
	call	_Znam@PLT
	mov	r13, rax
	mov	r12, r13
	mov	ebx, 2952
.L23:
	test	rbx, rbx
	js	.L22
	mov	rdi, r12
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEEC1Ev
	add	r12, 24
	sub	rbx, 1
	jmp	.L23
.L22:
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR [rax], r13
	nop
	add	rsp, 24
	pop	rbx
	pop	r12
	pop	r13
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC2Ev, .-_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC2Ev
	.weak	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC1Ev
	.set	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC1Ev,_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC2Ev
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"./words_alpha.txt"
.LC2:
	.string	"%s"
.LC3:
	.string	"aaliis"
	.text
	.globl	main
	.type	main, @function
main:
.LFB627:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA627
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 152
	.cfi_offset 3, -24
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	QWORD PTR -144[rbp], 0
	lea	rax, -144[rbp]
	mov	rdi, rax
.LEHB0:
	call	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EEC1Ev
.LEHE0:
	lea	rsi, .LC0[rip]
	lea	rdi, .LC1[rip]
.LEHB1:
	call	fopen@PLT
	mov	QWORD PTR -136[rbp], rax
	mov	QWORD PTR -128[rbp], 0
	mov	QWORD PTR -120[rbp], 0
	mov	QWORD PTR -112[rbp], 0
	mov	QWORD PTR -104[rbp], 0
	mov	QWORD PTR -96[rbp], 0
	mov	QWORD PTR -88[rbp], 0
	mov	QWORD PTR -80[rbp], 0
	mov	QWORD PTR -72[rbp], 0
	mov	QWORD PTR -64[rbp], 0
	mov	QWORD PTR -56[rbp], 0
	mov	QWORD PTR -48[rbp], 0
	mov	QWORD PTR -40[rbp], 0
	mov	DWORD PTR -32[rbp], 0
	mov	DWORD PTR -152[rbp], 0
.L26:
	cmp	DWORD PTR -152[rbp], 7918
	jg	.L25
	lea	rdx, -128[rbp]
	mov	rax, QWORD PTR -136[rbp]
	lea	rsi, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	mov	edx, DWORD PTR -152[rbp]
	lea	rcx, -128[rbp]
	lea	rax, -144[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE6insertES2_i
	add	DWORD PTR -152[rbp], 1
	jmp	.L26
.L25:
	mov	DWORD PTR -148[rbp], 0
.L28:
	cmp	DWORD PTR -148[rbp], 295299
	jg	.L27
	lea	rax, -144[rbp]
	lea	rsi, .LC3[rip]
	mov	rdi, rax
	call	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE4findES2_
	add	DWORD PTR -148[rbp], 1
	jmp	.L28
.L27:
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	call	fclose@PLT
.LEHE1:
	mov	ebx, 0
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED1Ev
	mov	eax, ebx
	mov	rcx, QWORD PTR -24[rbp]
	xor	rcx, QWORD PTR fs:40
	je	.L31
	jmp	.L33
.L32:
	mov	rbx, rax
	lea	rax, -144[rbp]
	mov	rdi, rax
	call	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L33:
	call	__stack_chk_fail@PLT
.L31:
	add	rsp, 152
	pop	rbx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA627:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE627-.LLSDACSB627
.LLSDACSB627:
	.uleb128 .LEHB0-.LFB627
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB627
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L32-.LFB627
	.uleb128 0
	.uleb128 .LEHB2-.LFB627
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE627:
	.text
	.size	main, .-main
	.section	.text._ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEEC2Ev,"axG",@progbits,_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEEC5Ev,comdat
	.align 2
	.weak	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEEC2Ev
	.type	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEEC2Ev, @function
_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEEC2Ev:
.LFB632:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], 0
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEEC2Ev, .-_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEEC2Ev
	.weak	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEEC1Ev
	.set	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEEC1Ev,_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEEC2Ev
	.section	.text._ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED2Ev,"axG",@progbits,_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED5Ev,comdat
	.align 2
	.weak	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED2Ev
	.type	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED2Ev, @function
_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED2Ev:
.LFB635:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED2Ev, .-_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED2Ev
	.weak	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED1Ev
	.set	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED1Ev,_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EED2Ev
	.section	.text._ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE6insertES2_i,"axG",@progbits,_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE6insertES2_i,comdat
	.align 2
	.weak	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE6insertES2_i
	.type	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE6insertES2_i, @function
_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE6insertES2_i:
.LFB637:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 88
	.cfi_offset 3, -24
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	DWORD PTR -84[rbp], edx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	_Z12rolling_hashPKc
	mov	rcx, rax
	movabs	rdx, -5653336737794495161
	mov	rax, rcx
	mul	rdx
	mov	rax, rdx
	shr	rax, 11
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	imul	rax, rax, 2953
	sub	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	lea	rbx, [rcx+rax]
	mov	edx, DWORD PTR -84[rbp]
	mov	rcx, QWORD PTR -80[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN11HashTableNS6Pair_tIPKciEC1ES2_i
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdx, rax
	mov	rdi, rbx
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backES5_
	mov	rax, QWORD PTR -56[rbp]
	mov	rbx, QWORD PTR -24[rbp]
	xor	rbx, QWORD PTR fs:40
	je	.L38
	call	__stack_chk_fail@PLT
.L38:
	add	rsp, 88
	pop	rbx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE6insertES2_i, .-_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE6insertES2_i
	.section	.text._ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE4findES2_,"axG",@progbits,_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE4findES2_,comdat
	.align 2
	.weak	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE4findES2_
	.type	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE4findES2_, @function
_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE4findES2_:
.LFB638:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_Z12rolling_hashPKc
	mov	rcx, rax
	movabs	rdx, -5653336737794495161
	mov	rax, rcx
	mul	rdx
	mov	rax, rdx
	shr	rax, 11
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	imul	rax, rax, 2953
	sub	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	rdi, rax
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4headEv
	mov	QWORD PTR -16[rbp], rax
.L43:
	cmp	QWORD PTR -16[rbp], 0
	je	.L40
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_Z8cmp_slowPKcS0_
	test	eax, eax
	sete	al
	test	al, al
	je	.L41
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L42
.L41:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node4nextEv
	mov	QWORD PTR -16[rbp], rax
	jmp	.L43
.L40:
	mov	eax, 0
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE4findES2_, .-_ZN11HashTableNS9HashTableIPKciXadL_Z12rolling_hashS2_EEXadL_Z8cmp_slowS2_S2_EELm2953EE4findES2_
	.section	.text._ZN11HashTableNS6Pair_tIPKciEC2ES2_i,"axG",@progbits,_ZN11HashTableNS6Pair_tIPKciEC5ES2_i,comdat
	.align 2
	.weak	_ZN11HashTableNS6Pair_tIPKciEC2ES2_i
	.type	_ZN11HashTableNS6Pair_tIPKciEC2ES2_i, @function
_ZN11HashTableNS6Pair_tIPKciEC2ES2_i:
.LFB640:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	DWORD PTR -20[rbp], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -20[rbp]
	mov	DWORD PTR 8[rax], edx
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	_ZN11HashTableNS6Pair_tIPKciEC2ES2_i, .-_ZN11HashTableNS6Pair_tIPKciEC2ES2_i
	.weak	_ZN11HashTableNS6Pair_tIPKciEC1ES2_i
	.set	_ZN11HashTableNS6Pair_tIPKciEC1ES2_i,_ZN11HashTableNS6Pair_tIPKciEC2ES2_i
	.section	.text._ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backES5_,"axG",@progbits,_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backES5_,comdat
	.align 2
	.weak	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backES5_
	.type	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backES5_, @function
_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backES5_:
.LFB642:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 72
	.cfi_offset 3, -24
	mov	QWORD PTR -56[rbp], rdi
	mov	rcx, rdx
	mov	rax, rsi
	mov	rdx, rdi
	mov	rdx, rcx
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -80[rbp]
	mov	rdx, QWORD PTR -72[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	edi, 32
	call	_Znwm@PLT
	mov	rbx, rax
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdx, rax
	mov	rdi, rbx
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4NodeC1ES5_
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backEPNS6_4NodeE
	mov	rcx, QWORD PTR -24[rbp]
	xor	rcx, QWORD PTR fs:40
	je	.L47
	call	__stack_chk_fail@PLT
.L47:
	add	rsp, 72
	pop	rbx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backES5_, .-_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backES5_
	.section	.text._ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4headEv,"axG",@progbits,_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4headEv,comdat
	.align 2
	.weak	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4headEv
	.type	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4headEv, @function
_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4headEv:
.LFB643:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4headEv, .-_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4headEv
	.section	.text._ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node4nextEv,"axG",@progbits,_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node4nextEv,comdat
	.align 2
	.weak	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node4nextEv
	.type	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node4nextEv, @function
_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node4nextEv:
.LFB644:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node4nextEv, .-_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node4nextEv
	.section	.text._ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4NodeC2ES5_,"axG",@progbits,_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4NodeC5ES5_,comdat
	.align 2
	.weak	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4NodeC2ES5_
	.type	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4NodeC2ES5_, @function
_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4NodeC2ES5_:
.LFB646:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rcx, rdx
	mov	rax, rsi
	mov	rdx, rdi
	mov	rdx, rcx
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR 16[rcx], rax
	mov	QWORD PTR 24[rcx], rdx
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4NodeC2ES5_, .-_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4NodeC2ES5_
	.weak	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4NodeC1ES5_
	.set	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4NodeC1ES5_,_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4NodeC2ES5_
	.section	.text._ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backEPNS6_4NodeE,"axG",@progbits,_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backEPNS6_4NodeE,comdat
	.align 2
	.weak	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backEPNS6_4NodeE
	.type	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backEPNS6_4NodeE, @function
_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backEPNS6_4NodeE:
.LFB648:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	test	rax, rax
	je	.L54
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node12insert_afterEPS7_
	jmp	.L55
.L54:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
.L55:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backEPNS6_4NodeE, .-_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE9push_backEPNS6_4NodeE
	.section	.text._ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node12insert_afterEPS7_,"axG",@progbits,_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node12insert_afterEPS7_,comdat
	.align 2
	.weak	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node12insert_afterEPS7_
	.type	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node12insert_afterEPS7_, @function
_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node12insert_afterEPS7_:
.LFB649:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node6attachEPS7_
	cmp	QWORD PTR -8[rbp], 0
	je	.L58
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node6attachEPS7_
.L58:
	mov	rax, QWORD PTR -32[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node12insert_afterEPS7_, .-_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node12insert_afterEPS7_
	.section	.text._ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node6attachEPS7_,"axG",@progbits,_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node6attachEPS7_,comdat
	.align 2
	.weak	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node6attachEPS7_
	.type	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node6attachEPS7_, @function
_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node6attachEPS7_:
.LFB650:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node6attachEPS7_, .-_ZN6ListNS4ListIN11HashTableNS6Pair_tIPKciEEE4Node6attachEPS7_
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (Arch Linux 9.3.0-1) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
