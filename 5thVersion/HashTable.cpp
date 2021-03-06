#pragma once
#include <climits>
#include <immintrin.h>
#include <cstdint>
#include "../HashFunctions.cpp"
#include "List.cpp"

template <typename T1, typename T2>
struct Pair_t {
	T1 first;
	T2 second;
};


int ull_cmp(const char* a, const char* b){
	int d = -1;

	asm (R"(

		.intel_syntax noprefix
	    mov     rax, QWORD PTR [rdi]
        cmp     QWORD PTR [rsi], rax
        jne     different 
        mov     rax, QWORD PTR [rsi+8]
        cmp     QWORD PTR [rdi+8], rax
        jne     different 
        mov     rax, QWORD PTR [rsi+16]
        cmp     QWORD PTR [rdi+16], rax
        jne     different 
        mov     rax, QWORD PTR [rsi+24]
        cmp     QWORD PTR [rdi+24], rax
        jne     different 

		mov %0, 0
		jmp exit

	different:
			mov %0, -1;

	exit:
		.att_syntax
		)"
		:"=r"(d)
		:"D"(a), "S"(b)
		);
	
	return d;
}

inline int sse_cmp(const char* a, const char* b) {

	int d = -1;

	asm (R"(
		.intel_syntax noprefix
		movdqa xmm0, XMMWORD PTR [%1]
		movdqa xmm1, XMMWORD PTR [%2]
		pcmpeqb xmm0, xmm1
		pmovmskb eax, xmm0
		cmp eax, 0xffff
		setne al
		movzx eax, al
		neg eax
		cmp eax, 0
		jne yexit

		movdqa xmm0, XMMWORD PTR [%1 + 16]
		movdqa xmm1, XMMWORD PTR [%2 + 16]
		pcmpeqb xmm0, xmm1
		pmovmskb eax, xmm0
		cmp eax, 0xffff
		setne al
		movzx eax, al
		neg eax

		yexit:
		mov %0, eax
		.att_syntax
	)"
		:"=r"(d)
		:"r"(a), "r"(b)
		:"eax", "xmm0", "xmm1"
		);

	return d;
}

template <typename key_t, typename val_t, unsigned long max_size>
class HashTable {
public:

	List<Pair_t<key_t, val_t>>* table = nullptr; 

	HashTable(){
		table = new List<Pair_t<key_t, val_t>>[max_size]();
	}

	void insert(key_t key, val_t val){

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
        : "r"(key)
        : "rax", "rcx"
    );

	h = h % max_size;
		
		Node<Pair_t<key_t, val_t>>* new_node = new Node<Pair_t<key_t, val_t>>(Pair_t<key_t, val_t>({key, val}));
		table[h].push_front(new_node);
	}

	Node<Pair_t<key_t, val_t>>* find(key_t key){


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
        : "r"(key)
        : "rax", "rcx"
    );

	h = h % max_size;

		Node<Pair_t<key_t, val_t>>* cur = table[h].head_;

		while (cur != nullptr){

			if (sse_cmp(key, cur->val.first) == 0) break;

			cur = cur->next_;
		}

		return cur;
	}

	~HashTable(){
		delete [] table;
	}
};

const unsigned long MAX_NUM_LINES = 364245;
const unsigned long MAX_NUM_CHARS = 32 * MAX_NUM_LINES;
