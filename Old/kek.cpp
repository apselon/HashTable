#include <stdio.h>


int main(void){

	__int64_t a = 2,
		b = 2, 
		c = 0;

asm volatile(R"(
	.intel_syntax noprefix
	mov rax, %1
	mov rbx, %2
	add rax, rbx
	mov %0, rax
	.att_syntax
)"
	:"=r"(c)
	:"r"(a), "r"(b)
	);

	printf("%ld\n", c);
}
