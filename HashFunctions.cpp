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

	while (*key) {
		hash += *(key++);
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
        je      .MyL4
        xor     edx, edx
.MyL3:
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
        jne     .MyL3
        lea     rdx, [rdx+rdx*8]
        mov     rax, rdx
        shr     rax, 11
        xor     rax, rdx
        mov     rdx, rax
        sal     rdx, 15
        add     rax, rdx
		jmp .MyExit

.MyL4:
        xor     eax, eax
.MyExit:
		.att_syntax
	)"
	:"=r"(d)
	:"D"(key)
	);

	return d;
}
