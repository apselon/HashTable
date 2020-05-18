#include <cstdio>
#include <cstring>
#include <immintrin.h>
#include "HashTable.cpp"

int count_chars(FILE* file);
char* read_text(FILE* file, long int num_chars);
void change_divider(char* whole_text, long int num_chars, char old_divider, char new_divider);
char** divide_lines(char* whole_text, int* wordCount);

int main(void){

	FILE* input = fopen("../words_alpha.txt", "r");

	size_t len = count_chars(input);
	char* whole_text = read_text(input, len); 
	fclose(input);
	change_divider(whole_text, len, '\n', '\0');

	
	int num_lines = 0;
	char** text = divide_lines(whole_text, &num_lines);
	
	auto t = HashTable<const char*, int, 2953>();

	for (int i = 0; i < num_lines; ++i){
		t.insert(text[i], i);
	}


	int d = 0;
	for (int i = 0; i < num_lines; ++i){

		d = t.find(text[i])->val.second;

		if (d != i && text[i][0] >= '!'){
			printf("should be %d, got %d\n", i, d);
		}

	}

	printf("Finished!\n");


	return 0;

	delete [] whole_text;

	for (int i = 0; i < num_lines; ++i){
		delete [] text[i];
	}

	delete [] text;

}

int count_chars(FILE* file){

	int num_chars = 0;

	fseek(file, 0L, SEEK_END);
	num_chars = ftell(file);
	rewind(file);
	
	return num_chars;
}

char* read_text(FILE* file, long int num_chars){

	char* whole_text = new char[num_chars + 10]();
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


char** divide_lines(char* whole_text, int* wordCount){

	*wordCount = 0;

    char *start = whole_text;
    char *wordEnd = nullptr;

    size_t totalLength = 0;

    while (*whole_text) {
        wordEnd = strchr(whole_text, '\0');
        if (!wordEnd)
            break;

        totalLength += (wordEnd - whole_text + 1) + (32 - (wordEnd - whole_text + 1) % 32);
        whole_text = wordEnd;
        (*wordCount)++;
		*whole_text = '\0';
		++whole_text;
    }

    whole_text = start;

    char **wordlist = new char *[*wordCount];
    char *alignedWords = new char[totalLength + 16];

    if (reinterpret_cast<size_t>(alignedWords) % 32)
        alignedWords += 16;

    for (int i = 0; i < *wordCount; i++) {
        wordlist[i] = alignedWords;
        memcpy(alignedWords, whole_text, strlen(whole_text));
        wordEnd = strchr(whole_text, '\0');
        alignedWords += (wordEnd - whole_text + 1) + (32 - (wordEnd - whole_text + 1) % 32);
        whole_text = wordEnd;
        whole_text++;
    }

    return wordlist;
}

