#include <cstdio>
#include <cstring>
#include "HashTable.cpp"

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

static unsigned long rol(unsigned long v, unsigned long s) {
	s %= 32;
	if(s == 0)
		return v;
	return ((v << s) | (v >> (32 - s)));
}


unsigned long rolling_hash(const char* str){

	unsigned long h = 0;
	
	while (*str != 0){
		h = rol(h, 1) ^ *(str++);
	}

	return h;
}

int cmp(const char* str1, const char* str2){
	return strcmp(str1, str2);
}

/*
int cmp(const char* str1, const char* str2){
	int d = 0;
	asm(R"(
	.intel_syntax noprefix
	)"
	:"=r"(d)
	);
	
	return d;
}
*/

int main(void){

	auto t = HashTableNS::HashTable<const char*, int, rolling_hash, cmp, 257>();
	auto input = fopen("./words_alpha.txt", "r");

	char cur_word[100] = "";
	
	for (int i = 0; i < 2003; ++i){
		fscanf(input, "%s", cur_word);
		t.insert(cur_word, i);
	}
	
	for (int i = 0; i < 257 ; ++i){
		t.find("aaliis");
	}

	fclose(input);

	return 0;
}
