.text
.global adder_func
.global ldst

adder_func:
    addi a0, x0, 1
loop:
    addi t0, x0, 1 # 8 cycles
    addi t1, x0, 1 # 9 cycles
    addi t2, x0, 1 # 10 cycles
    addi t3, x0, 1 # 11 cycles
    addi t4, x0, 1
    addi t5, x0, 1
    addi t6, x0, 1
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1
    addi t4, x0, 1 # 19 cycles
    beq a0, x0, done
    # 48 cycles
    addi t5, x0, 1 # jumps to 67 cycles #new cache line? 
    addi t6, x0, 1
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1
    addi t4, x0, 1
    addi t5, x0, 1
    addi t6, x0, 1
    addi t0, x0, 1
    addi t1, x0, 1 # 77 cycles
    addi t2, x0, 1 # 78 cycles
    addi t3, x0, 1 # 79 cycles
    addi t4, x0, 1 # 80 cycles
    addi t5, x0, 1 # 81 cycles
    addi t6, x0, 1 # 82 cycles
    # 50 cycles gap
    addi t0, x0, 1 # 132 cycles
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1
    addi t4, x0, 1
    addi t5, x0, 1
    addi t6, x0, 1
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1 #140 cycles
    addi t4, x0, 1
    addi t5, x0, 1
    addi t6, x0, 1
    addi t0, x0, 1
    addi t1, x0, 1 #145 cycles
    # 50 cycle gap
    addi t2, x0, 1 #195 cycles
    addi t3, x0, 1 #194 cycles
    addi t4, x0, 1 #195 cycles
    addi t5, x0, 1
    addi t6, x0, 1
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1
    addi t4, x0, 1
    addi t5, x0, 1
    addi t6, x0, 1
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1 # 206 cycles
    # 52 cycle gap
    addi t4, x0, 1 # 258 cycles
    addi t5, x0, 1 # 257 cycles
    addi t6, x0, 1 # 258 cycles
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1
    addi t4, x0, 1
    addi t5, x0, 1
    addi t6, x0, 1 # 267 cycles
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1 # 269 cycles
    # addi t4, x0, 1 # 270 cycles
    # addi t5, x0, 1 # 269 cycles
    # #52 cycle gap
    # addi t6, x0, 1 # 321 cycles
    # addi t6, x0, 1
    # addi t0, x0, 1
    # addi t1, x0, 1
    # addi t2, x0, 1
    # addi t3, x0, 1
    # addi t4, x0, 1
    # addi t5, x0, 1
    # addi t6, x0, 1 # 327 cycles
    # addi t6, x0, 1
    # addi t0, x0, 1
    # addi t1, x0, 1
    # addi t2, x0, 1
    # addi t3, x0, 1 # 332 cycles
    addi a0, a0, -1
    # addi t2, x0, 1
    j loop
    # addi t3, x0, 1 # 206 cycles

done:
    ret


temp:
    addi t0, x0, 1 # 8 cycles
    addi t1, x0, 1 # 9 cycles
    addi t2, x0, 1 # 10 cycles
    addi t3, x0, 1 # 11 cycles
    addi t4, x0, 1
    addi t5, x0, 1
    addi t6, x0, 1
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1
    addi t4, x0, 1 # 19 cycles
    # 48 cycles
    addi t5, x0, 1 # jumps to 67 cycles #new cache line? 
    addi t6, x0, 1
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1
    addi t4, x0, 1
    addi t5, x0, 1
    addi t6, x0, 1
    addi t0, x0, 1
    addi t1, x0, 1 # 77 cycles
    addi t2, x0, 1 # 78 cycles
    addi t3, x0, 1 # 79 cycles
    addi t4, x0, 1 # 80 cycles
    addi t5, x0, 1 # 81 cycles
    addi t6, x0, 1 # 82 cycles
    # 50 cycles gap
    addi t0, x0, 1 # 132 cycles
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1
    addi t4, x0, 1
    addi t5, x0, 1
    addi t6, x0, 1
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1 #140 cycles
    addi t4, x0, 1
    addi t5, x0, 1
    addi t6, x0, 1
    addi t0, x0, 1
    addi t1, x0, 1 #145 cycles
    # 50 cycle gap
    addi t2, x0, 1 #195 cycles
    addi t3, x0, 1 #194 cycles
    addi t4, x0, 1 #195 cycles
    addi t5, x0, 1
    addi t6, x0, 1
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1
    addi t4, x0, 1
    addi t5, x0, 1
    addi t6, x0, 1
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1 # 206 cycles
    # 52 cycle gap
    addi t4, x0, 1 # 258 cycles
    addi t5, x0, 1 # 257 cycles
    addi t6, x0, 1 # 258 cycles
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1
    addi t4, x0, 1
    addi t5, x0, 1
    addi t6, x0, 1 # 267 cycles
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1 # 269 cycles
    addi t4, x0, 1 # 270 cycles
    addi t5, x0, 1 # 269 cycles
    #52 cycle gap
    addi t6, x0, 1 # 321 cycles
    addi t6, x0, 1
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1
    addi t4, x0, 1
    addi t5, x0, 1
    addi t6, x0, 1 # 327 cycles
    addi t6, x0, 1
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1 # 332 cycles
    addi t4, x0, 1 # 333 cycles
    addi t5, x0, 1 # 332 cycles
    # 52 cycle gap
    addi t6, x0, 1 # 384 cycles
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1
    addi t4, x0, 1
    addi t5, x0, 1
    addi t6, x0, 1
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1
    addi t4, x0, 1
    addi t5, x0, 1
    addi t6, x0, 1 # 396 cycles
    addi t0, x0, 1 # 395 cycles

    # 52 cycle gap
    addi t1, x0, 1 # 447 cycles
    addi t2, x0, 1 # 446 cycles
    addi t3, x0, 1 # 447 cycles
    addi t4, x0, 1 # 450 cycles
    addi t5, x0, 1 # 447 cycles
    addi t6, x0, 1 # 450 cycles
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1
    addi t4, x0, 1
    addi t5, x0, 1
    addi t6, x0, 1 # 457 cycles
    addi t0, x0, 1 # 458 cycles
    addi t1, x0, 1 # 459 cycles
    #51 cycle gap
    addi t2, x0, 1 # 510 cycles
    addi t3, x0, 1 # 510 cycles
    addi t4, x0, 1 # 509 cycles
    addi t5, x0, 1 # 510 cycles
    addi t6, x0, 1 # 513 cycles
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1
    addi t4, x0, 1
    addi t5, x0, 1
    addi t6, x0, 1
    addi t0, x0, 1
    addi t1, x0, 1 # 520 cycles
    addi t2, x0, 1 # 521 cycles
    addi t3, x0, 1 # 522 cycles
    addi t4, x0, 1 # 525 cycles
    # 51 cycle gap
    addi t5, x0, 1 # 571 cycles
    addi t6, x0, 1 # 572 cycles
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1
    addi t4, x0, 1
    addi t5, x0, 1
    addi t6, x0, 1 # 579 cycles
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1
    addi t4, x0, 1 # 584 cycles
    addi t5, x0, 1 # 583 cycles
    addi t6, x0, 1 # 588 cycles
    addi t0, x0, 1 # 588 cycles
    # 47 cycles gap
    addi t1, x0, 1 #635
    addi t2, x0, 1
    addi t3, x0, 1
    addi t4, x0, 1
    addi t5, x0, 1
    addi t6, x0, 1 # 642 cycles
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1
    addi t4, x0, 1
    addi t5, x0, 1
    addi t6, x0, 1
    addi t0, x0, 1
    addi t1, x0, 1 # 651 cycles
    # 46 cycles gap
    addi t2, x0, 1 # 697 cycles
    addi t3, x0, 1
    addi t4, x0, 1
    addi t5, x0, 1
    addi t6, x0, 1
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1
    addi t4, x0, 1
    addi t5, x0, 1
    addi t6, x0, 1
    addi t0, x0, 1
    addi t1, x0, 1
    addi t2, x0, 1
    addi t3, x0, 1 # 716 cycles
    addi t4, x0, 1
    # addi t5, x0, 1
    # addi t6, x0, 1 # 762 cycles
    ret

ldst:
    lw t0, 0(a0)
    # lw t1, 0(sp)
    # lw t2, 0(sp)
    # lw t3, 0(sp)
    # lw t4, 0(sp)
    # lw t5, 0(sp)
    # lw t6, 0(sp)
