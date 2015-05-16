// Computes sum = 1 + ... + 100
    @i      // i = 1
    M = 1

    @sum    // sum = 0
    M = 0

(LOOP)
    @i      // if (i - 100) = 0 goto END
    D = M
    @100
    D = D - A
    @END
    D;JGT

    @i      // sum += i
    D = M
    @sum
    M = D + M

    @i      // i++
    M = M + 1

    @LOOP   // goto LOOP
    0;JMP

(END)       // infinite loop
    @END
    0;JMP
