#!/bin/bash

# Project01Gates=( 'And' 'Or' 'Xor' 'Mux' 'DMux' 'Not16' 'And16' 'Or16' 'Mux16' 'Mux4Way16' 'Mux8Way16' 'Or8Way' 'DMux4Way' 'DMux8Way' );

# for gate in "${Project01Gates[@]}"; do
#   echo "Testing '$gate'"
#   HardwareSimulator projects/01/$gate.tst
#   echo
# done

Project02Gates=( 'HalfAdder' 'FullAdder' 'Add16' 'Inc16' 'ALU-nostat' );

for gate in "${Project02Gates[@]}"; do
  echo "Testing '$gate'"
  HardwareSimulator projects/02/$gate.tst
  echo
done
