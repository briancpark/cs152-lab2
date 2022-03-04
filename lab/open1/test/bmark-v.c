/*
 * This microbenchmark is compiled to execute in a virtual memory environment
 */
#include <stdio.h>

extern uint64_t adder_func(uint64_t a);

static inline unsigned long get_cycles(void)
{
    unsigned long cycles;
    __asm__ __volatile__ ("rdcycle %0" : "=r" (cycles));
    return cycles;
}

int main(void)
{
    /* TODO: Write your code here */
    unsigned long start = get_cycles();
    adder_func(4);
    unsigned long end  = get_cycles();

    printf("Cycles: %lu\n", end - start);    
    return 0;
}
