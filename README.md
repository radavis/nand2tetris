# nand2tetris

Construct a complete computer system: hardware + software.

## Hardware: Hack
* 16-bit computer written in HDL

## Software: Jack
* Assembler
* Virtual Machine
* High-Level Language
  - Compiler
  - OS

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
