#pragma once
#include <cstring>

unsigned long id_hash(const char* str = ""){
	if (false) return *str;
	return 1;
}

unsigned long sum_hash(const char* str){

	unsigned long sum = 0;

	while (*str != 0){
		sum += *(str++);
	}

	return sum;
}

unsigned long len_hash(const char* str){
	return strlen(str)/2;
}

unsigned long sum_len_hash(const char* str){

	unsigned long len = len_hash(str);

	if (len != 0){
		return sum_hash(str)/len;
	}

	return 0;
}

unsigned long rolling_hash(const char* str){

	unsigned long h = 0;
	
	while (*str != 0){
		h = ((h << 1) | (h >> 31)) ^ *(str++);
	}

	return h;
}

unsigned long one_at_a_time(const char* key) {

	unsigned long hash = 0;

	int i = 0;
	int len = strlen(key);

	while (i != len) {
		hash += key[i++];
		hash += hash << 10;
		hash ^= hash >> 6;
	}

	hash += hash << 3;
	hash ^= hash >> 11;
	hash += hash << 15;

	return hash;
}

unsigned long one_at_a_time_asm(const char* key){

	unsigned long d = 0;

	asm(R"(
		.intel_syntax noprefix

        movsx   rax, BYTE PTR [rdi]
        test    al, al
        je      .MyLibL4
        xor     edx, edx
.MyLibL3:
        add     rax, rdx
        add     rdi, 1
        mov     rdx, rax
        sal     rdx, 10
        add     rax, rdx
        mov     rdx, rax
        shr     rdx, 6
        xor     rdx, rax
        movsx   rax, BYTE PTR [rdi]
        test    al, al
        jne     .MyLibL3
        lea     rdx, [rdx+rdx*8]
        mov     rax, rdx
        shr     rax, 11
        xor     rax, rdx
        mov     rdx, rax
        sal     rdx, 15
        add     rax, rdx
		jmp .MyLibExit

.MyLibL4:
        xor     eax, eax
.MyLibExit:
		.att_syntax
	)"
	:"=r"(d)
	:"D"(key)
	);

	return d;
}

unsigned long crc32(const char* data){

    unsigned long h = 0;
    asm(R"(
        .intel_syntax noprefix
        lea rax, [%1]
        xor %0, %0

    loooooop%=:
        crc32 %0, byte ptr [rax]
        inc rax
        cmp byte ptr [rax], 0

        jne loooooop%=

        .att_syntax prefix
    )"
        : "=r"(h)
        : "r"(data)
        : "rax", "rcx"
	);

    return h;
}
