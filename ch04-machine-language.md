## Machine Language

"Machine Language is the fine line where hardware and software meet."

Programming in machine language is tedious. Instead, use a low-level symbolic language (assembly) that is translated to machine language by an assembler.

A machine language is an agreed upon formalism, which manipulates memory using a processor and a set of registers.

* Memory - Stores data and instructions in locations called 'words' which can be accessed via an 'address'. Notation:
  - Memory[address]
  - RAM[address]
  - M[address]

* Processor (CPU) - Performs operations on registers and memory locations. Operations:
  - arithmetic
  - logic
  - memory access
  - control (branching)

* Registers - High-speed local memory to the Processor. Registers minimize the use of memory access commands, which are slow operations.


### Commands

#### Arithmetic and Logic Operations

add, subtract, and, or, not, negate, shift, ...

```
ADD R2, R1, R3    // R2 ← R1 + R3
ADD R2, R1, foo   // R2 ← R1 + value at pointer 'foo'
AND R1, R1, R2    // R1 ← R1 & R2
```

#### Memory Access

Three memory access modes:

* Direct Addressing - using a numerical address or a symbol that represents an address.

```
LOAD R1, 67       // R1 ← Memory[67]
LOAD R1, bar      // R1 ← Memory[67]
```

* Immediate Addressing - load values (constants) that appear in instruction code.

```
LOADI R1, 67      // R1 ← 67
```

* Indirect Addressing - a memory location holds the required address (pointer).

```
// Translation of x = foo[j] or x = *(foo + j)
ADD R1, foo, j    // R1 ← foo + j
LOAD* R2, R1      // R2 ← Memory[R1]
STR R2, x         // x ← R2
```

#### Flow Control (Branching)

```
// high-level implementation
while (R1 >= 0) {
  // code segment 1
}

// code segment 2
```

```
// low-level implementation
beginWhile:
  JNG R1, endWhile
  // code segment 1
  JMP beginWhile

endWhile:
  // code segment 2
```

* repetition - go back to the start of a loop
* conditional execution - if..else
* subroutine calling - execute a block of code


## Hack Machine Language

The Hack computer is a von Neumann platform
  * 16-bit machine
  * CPU
  * instruction memory
  * data memory
  * memory-mapped I/O
    - screen
    - keyboard

### Add the Assembler and CPU Emulator to the path

```
ln -s ~/code/nand2tetris/tools/Assembler.sh /usr/local/bin/Assembler
chmod +x /usr/local/bin/Assembler

ln -s ~/code/nand2tetris/tools/CPUEmulator.sh /usr/local/bin/CPUEmulator
chmod +x /usr/local/bin/CPUEmulator
```

### Sum.asm

```
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
```

### Assemble the program

```
$ Assembler Sum.asm
```

yields `Sum.hack`, machine code

```
0000000000010000
1110111111001000
0000000000010001
1110101010001000
0000000000010000
1111110000010000
0000000001100100
1110010011010000
0000000000010010
1110001100000001
0000000000010000
1111110000010000
0000000000010001
1111000010001000
0000000000010000
1111110111001000
0000000000000100
1110101010000111
0000000000010010
1110101010000111
```
