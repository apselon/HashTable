#pragma once
#include <climits>
#include <immintrin.h>
#include "List.cpp"

template <typename T1, typename T2>
struct Pair_t {
	T1 first;
	T2 second;
};

	unsigned long hash(const char* key){
	    unsigned long d = 0;

	    asm volatile(R"(
	        .intel_syntax noprefix
	
	        movsx   rax, BYTE PTR [rdi]
	        test    al, al
	        je      .MyyL4
	        xor     edx, edx
	.MyyL3:
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
	        jne     .MyyL3
	        lea     rdx, [rdx+rdx*8]
	        mov     rax, rdx
	        shr     rax, 11
	        xor     rax, rdx
	        mov     rdx, rax
	        sal     rdx, 15
	        add     rax, rdx
	        jmp .MyyExit
	
	.MyyL4:
	        xor     eax, eax
	.MyyExit:
	        .att_syntax
	    )"
		:"=r"(d)
	    :"D"(key)
	    );
	
	    return d;

	}

template <typename key_t, typename val_t, int (*cmp)(key_t, key_t), unsigned long max_size>
class HashTable {
public:

	List<Pair_t<key_t, val_t>>* table = nullptr; 

	HashTable(){
		table = new List<Pair_t<key_t, val_t>>[max_size]();
	}

	void insert(key_t key, val_t val){
		unsigned long h = hash(key) % max_size;
		
		Node<Pair_t<key_t, val_t>>* new_node = new Node<Pair_t<key_t, val_t>>(Pair_t<key_t, val_t>({key, val}));
		table[h].push_front(new_node);
	}

	Node<Pair_t<key_t, val_t>>* find(key_t key){

		unsigned long h = hash(key) % max_size;

		Node<Pair_t<key_t, val_t>>* cur = table[h].head_;

		while (cur != nullptr){
			if (cmp(key, cur->val.first) == 0){
				return cur;
			}

			cur = cur->next_;
		}

		return cur;
	}

	~HashTable(){
		delete [] table;
	}
};

