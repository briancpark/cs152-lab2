/*
 * NOTE: This microbenchmark is built to run in a physical environment
 */
#include <stdio.h>
// #include <stdlib.h>
// #include <math.h>
#define N 100000


// extern uint64_t  adder_func(uint64_t a);
extern void ldst(void *addr);

static inline unsigned long rdcycle(void)
{
    unsigned long cycles;
    __asm__ __volatile__ ("rdcycle %0" : "=r" (cycles));
    return cycles;
}

int main(void)
{
    // int a[4000];
    // int k[4000];
    // for (int i = 0; i < 4000; i++) a[i] = 100;

    // unsigned long start = rdcycle();
    // for (int i = 0; i < 100; i++) {
    //     start = rdcycle();
    //     k[i] = a[i];
        
    //     printf("Cycles: %lu\n", rdcycle() - start);
    // }
    // unsigned long end  = rdcycle();
    // printf(k);
    // printf("Cycles: %lu\n", end - start);    


    // FOR INSTRUCTION STUFF
    unsigned long start = rdcycle();
    adder_func(4);
    unsigned long end  = rdcycle();

    printf("Cycles: %lu\n", end - start);    
    return 0;
}
