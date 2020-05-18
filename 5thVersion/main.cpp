#include <cstdio>
#include <cstring>
#include <immintrin.h>
#include "HashTable.cpp"
#include <fstream>

int count_chars(FILE* file);
char* read_text(FILE* file);
void change_divider(char* whole_text, long int num_chars, char old_divider, char new_divider);
long int count_lines(char* whole_text, long int num_chars, char divider);
char** divide_lines(char* whole_text, long int num_lines, long int num_chars);

int main(void){


	FILE* input = fopen("../opt_words_alpha.txt", "r");

	size_t len = MAX_NUM_CHARS; 
	size_t num_lines = MAX_NUM_LINES; 

	char* whole_text = read_text(input); 
	char** text = divide_lines(whole_text, num_lines, len);
	setvbuf(input, nullptr, _IOFBF, MAX_NUM_CHARS);

	auto t = HashTable<const char*, size_t, 349963>();


	for (size_t i = 0; i < num_lines; ++i){
		t.insert(text[i], i);
	}


	for (int j = 0; j < 20; ++j){
	for (size_t i = 0; i < num_lines; ++i){
		t.find(text[i])->val.second;
	}
	}


	fclose(input);

	delete [] text;
	delete [] whole_text;

	return 0;
}

int count_chars(FILE* file){

	int num_chars = 0;

	fseek(file, 0L, SEEK_END);
	num_chars = ftell(file);
	rewind(file);
	
	return num_chars;
}

char* read_text(FILE* file){

	char* whole_text = new char[MAX_NUM_CHARS + 10]; 
	//char* whole_text = (char*)aligned_alloc(32, MAX_NUM_CHARS + 10); 

	char* start = whole_text;

	for (unsigned int i = 0; i < MAX_NUM_LINES; ++i){
		fscanf(file, "%s", whole_text);
		whole_text += 32;
	}

	return start;
}

void change_divider(char* whole_text, long int num_chars, char old_divider, char new_divider){

	for(int i = 0; i < num_chars; ++i){
		if (whole_text[i] == old_divider){
			whole_text[i] = new_divider;
		}
	}
}

long int count_lines(char* whole_text, long int num_chars, char divider){

	long int num_lines = 0;

	for (int i = 0; i < num_chars; ++i){
		if (whole_text[i] == divider)
			num_lines++;
	}

	return num_lines;
}

char** divide_lines(char* whole_text, long int num_lines, long int num_chars){

	char** lines = new char* [num_lines + 32]();

	for (int i = 0; i < num_lines; ++i){
			 lines[i] = whole_text;
			 whole_text += 32;
		}

	return lines;
}

