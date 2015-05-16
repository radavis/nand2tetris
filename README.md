# nand2tetris

Notes and code from the book [_Elements of Computing Systems_](http://www.nand2tetris.org/).

![Hardware/Software Hierarchy](images/hardware-software_hierarchy.png)

Construct a complete computer system: hardware + software.

## Hardware: Hack
* 16-bit computer written in HDL

## Software: Jack
* Assembler
* Virtual Machine
* High-Level Language
  - Compiler
  - OS

The software components can be written in any modern programming language.

It is possible to build all of these components independently via the process of abstraction: ignoring the details of __how__ a component functions, and utilizing the component for what it __does__.

![Chapter Breakdown](images/human-thought-to-physics.png)

## Getting Set Up (OSX)

Extract nand2tetris.zip.

## Hardware Simulator

### Add to path
```
ln -s ~/code/nand2tetris/tools/HardwareSimulator.sh /usr/local/bin/HardwareSimulator
chmod +x /usr/local/bin/HardwareSimulator
```

### Run a test
From the `nand2tetris` folder.
```
HardwareSimulator projects/01/Nand.tst
```

## Jack Language Example

```
class Main {
  function void main() {
    do Output.printString("Hello World");
    do Output.println();
    return;
  }
}
```

__Compilation__ is the process of parsing text and converting it into a low-level language that a computer understands (machine code). This process is broken up into several layers of abstraction and typically involves three translators: a __compiler__, a __vm__, and an __assembler__.

## Compiler
The compiler's task is broken into two stages:
* syntax analysis via constructing a parse tree
* code generation via processing the parse tree

## Virtual Machine
* runs intermediate language code
* stack-based machine

## Assembler
Translates assembly code into binary code.

# Notes

* [Chapter 1 - Boolean Logic](ch01-boolean-logic.md)
* [Chapter 2 - Boolean Arithmetic](ch02-boolean-arithmetic.md)
* [Chapter 3 - Sequential Logic](ch03-sequential-logic.md)


## References

* [Course Website](http://www.nand2tetris.org/)
* [Forum](http://nand2tetris-questions-and-answers-forum.32033.n3.nabble.com/)
* [HDL Survival Guide](http://www.nand2tetris.org/software/HDL%20Survival%20Guide.html)
* [Hack Chipset API](hack-chipset-api.md)
* [ALU Worksheet](http://nand2tetris-questions-and-answers-forum.32033.n3.nabble.com/file/n95834/alu_worksheet.pdf)

## Quotes

"Mistakes are the portals of discovery." - James Joyce

"The only kind of learning which significantly influences behavior is self-discovered or self-appropriated--truth that has been assimilated in experience." - Carl Rogers
