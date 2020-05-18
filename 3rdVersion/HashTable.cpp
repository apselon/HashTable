#pragma once
#include <climits>
#include <immintrin.h>
#include <cstdint>
#include "List.cpp"

template <typename T1, typename T2>
struct Pair_t {
	T1 first;
	T2 second;
};

	
inline unsigned long hash(const char* data){

    unsigned int h = 0;
		asm(R"(
		.intel_syntax noprefix
	    lea rax, [%1]
	    xor %0, %0
	hashing:
	    crc32 %0, byte ptr [rax]
	    inc rax
	    cmp byte ptr [rax], 0
	    jne hashing
	    .att_syntax prefix
	)"

	    : "=r"(h)
	    : "r"(data)
	    : "rax", "rcx");	

    return h;
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
			if (cmp(cur->val.first, key) == 0) break;
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
