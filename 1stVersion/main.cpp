#include <cstdio>
#include <cstring>
#include <immintrin.h>
#include "HashTable.cpp"
#include "../HashFunctions.cpp"

int count_chars(FILE* file);
char* read_text(FILE* file, long int num_chars);
void change_divider(char* whole_text, long int num_chars, char old_divider, char new_divider);
long int count_lines(char* whole_text, long int num_chars, char divider);
char** divide_lines(char* whole_text, long int num_lines, long int num_chars);

int main(void){

	FILE* input = fopen("../words_alpha.txt", "r");

	size_t len = count_chars(input);
	char* whole_text = read_text(input, len); 
	change_divider(whole_text, len, '\n', '\0');
	int num_lines = count_lines(whole_text, len, '\0');
	char** text = divide_lines(whole_text, num_lines, len);

	auto t = HashTable<const char*, int, one_at_a_time, strcmp, 2953>();
	printf("Adding %d words in table.\n", num_lines);

	for (int i = 0; i < num_lines; ++i){
		t.insert(text[i], i);
	}

	int d = 0;
	for (int i = 0; i < num_lines; ++i){
		d = t.find(text[i])->val.second;

		if (d != i && text[i][0] >= '!'){
			printf("Should be %d, got %d\n", i, d);
		}
	}

	printf("Finished!\n");

	fclose(input);

	delete [] whole_text;
	delete [] text;

	return 0;
}

int count_chars(FILE* file){

	int num_chars = 0;

	fseek(file, 0L, SEEK_END);
	num_chars = ftell(file);
	rewind(file);
	
	return num_chars;
}

char* read_text(FILE* file, long int num_chars){

	char* whole_text = new char[num_chars]; 
	fread(whole_text, sizeof(char), num_chars, file);

	return whole_text;
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

	char** lines = new char* [num_lines + 1];

	char prev_c = '\0';
	int cur_l = 0;

	for (int i = 0; i < num_chars; ++i){
		if (prev_c == '\0'){
			lines[cur_l] = &(whole_text[i]);
			++cur_l;
		}

		prev_c = whole_text[i];
	}

	return lines;
}

