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
    // printf("%d\n", sizeof(int));
    // int arr[N];

    // register unsigned long lim = 4096;
    // /* TODO: Write your code here */
    // register unsigned long start;
    // register unsigned long end;
    // start = rdcycle();
    // for (register int i = 0; i < N; i++) {
    //     arr[i] = i;
        
    //     if (i % lim == 0) {
    //         end  = rdcycle();
    //         printf("Cycles: %lu\n", end - start);    
    //         start  = rdcycle();
    //     }
        
    // }




    // unsigned long start = rdcycle();
    // ldst(&arr);
    // unsigned long end  = rdcycle();
    // printf("Cycles: %lu\n", end - start);



    // FOR INSTRUCTION STUFF
    unsigned long start = rdcycle();
    adder_func(4);
    unsigned long end  = rdcycle();

    printf("Cycles: %lu\n", end - start);    
    return 0;
}
