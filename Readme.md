# Hash Table
тут должны быть графики различных функций

# Optimization 
> Our goal is to get the best result with the minimum of effort.

![](slow.png)

### Hardcoding and assembling
By analyzing the output of perf, I realized the the significant amount of cpu time is spent on hash function. So, I decided to take it out of template parameter and hardcode in table with inline assembly. To make it work even better, I used the version generated by g++ with -O3 flag.
```C++
unsigned long hash(const char* key){
        unsigned long d = 0;

        asm volatile(R"(
            .intel_syntax noprefix
    
            movsx   rax, BYTE PTR [rdi]
            test    al, al
            je      .L4
            xor     edx, edx
    .L3:
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
            jne     .L3
            lea     rdx, [rdx+rdx*8]
            mov     rax, rdx
            shr     rax, 11
            xor     rax, rdx
            mov     rdx, rax
            sal     rdx, 15
            add     rax, rdx
            jmp .Exit
    
    .L4:
            xor     eax, eax
    .Exit:
            .att_syntax
    )"
        :"=r"(h)
        :"D"(key)
    );

        return h;

}
```

### Changing Hash Function
Jenkins hash is quite good, as you can see in the diagram above, hovewer it is not the fastest one. So I decided to use a crc32 hash, because of it's great distribution characteristic and hardware support.
```C++
inline unsigned long hash(const char* data){

    unsigned long h = 0;
    asm(R"(
        .intel_syntax noprefix
        lea rax, [%1]
        xor %0, %0
    looop:
        crc32 %0, byte ptr [rax]
        inc rax
        cmp byte ptr [rax], 0
        jne looop 
        .att_syntax prefix
    )"
        : "=r"(h)
        : "r"(data)
        : "rax", "rcx"
	);    

    return h;
}

```

### Improving strcmp
Analysis of my word corpus showed that there is now word longer then 27, so I decided to allign all strings to 32 and compare it by chunks of 8 symbosl.
```C++
int ull_cmp(const char* a, const char* b){

	unsigned long long a_chunk[4] = {0};
	unsigned long long b_chunk[4] = {0};

	for (int i = 0; i < 4; ++i){
		a_chunk[i] = *reinterpret_cast<const unsigned long long*>(a);
		b_chunk[i] = *reinterpret_cast<const unsigned long long*>(b);

		a += 8;
		b += 8;

		if ((a_chunk[i] ^ b_chunk[i]) != 0) return -1;
	}

	return 0;
}
```
Same function optimized and rewritten in assembly.

```C++
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
```
Decided to improve a performace even more and rewrited function using sse.
```C++
inline int avx_cmp(const char* a, const char* b) {

    int d = -1;

    asm (R"(
        .intel_syntax noprefix
        movdqu xmm0, XMMWORD PTR [%1]
        movdqu xmm1, XMMWORD PTR [%2]
        pcmpeqb xmm0, xmm1
        pmovmskb eax, xmm0
        cmp eax, 0xffff
        setne al
        movzx eax, al
        neg eax
        cmp eax, 0
        jne yexit

        movdqu xmm0, XMMWORD PTR [%1 + 16]
        movdqu xmm1, XMMWORD PTR [%2 + 16]
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

```
![](fast.png)
## Conclusion
Attempt | Run Time | Delta
--- | --- | ---
1 | 17.808 | -
2 | 16.495 | 2%
3 | 15.270 | 14%
4 | 12.117 | 26%

__Overall perforamance gain: 1.47x__
