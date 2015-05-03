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

These components can be written in any modern programming language.

It is possible to build all of these components independently via the process of abstraction: ignoring the details of __how__ a component functions, and utilizing the component for what it __does__.

![Chapter Breakdown](images/human-thought-to-physics.png)

## Getting Set Up (OSX)
Extract nand2tetris.zip to `~/Desktop`. Having this folder anywhere else doesn't seem to work correctly.

## Hardware Simulator

### Add to path
```
ln -s ~/Desktop/nand2tetris/tools/HardwareSimulator.sh /usr/local/bin/HardwareSimulator
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

Compiliation is the process of parsing text, to a low-level language that a computer understands (machine code). This process is broken up into several layers of abstraction and typically involves three translators: a compiler, a vm, and an assembler.

## Compiler
The compiler's task is broken into two stages:
* syntax analysis via constructing a parse tree
* code generation via processing the parse tree

## Virtual Machine
* runs intermediate language code
* stack-based machine

## Assembler
Translates assembly code into binary code.

## Boolean Logic

![Boolean Functions](images/boolean_functions.png)

Every digital device is built from the same building blocks: elementary logic gates (which consist of transistors). We can use the __Nand gate__ to construct every other logic gate.

### Implementation of a gate in HDL

![HDL implementation of Xor](images/hdl_xor_gate.png)

Fully testing individual chips is important. Fully testing more complex systems with 100% certainty is not feasible.


### Nand gate

![Nand Truth Table](images/nand_truth_table.png)

### Implementation of Gates

* [x] and
* [x] or
* [x] xor
* [x] mux
* [x] dmux
* [x] not16
* [x] and16
* [x] or16
* [ ] mux16
* [ ] mux4way16
* [ ] mux8way16
* [ ] dmux4way
* [ ] dmux8way

## Quotes

"Mistakes are the portals of discovery." - James Joyce

"The only kind of learning which significantly influences behavior is self-discovered or self-appropriated--truth that has been assimilated in experience." - Carl Rogers
