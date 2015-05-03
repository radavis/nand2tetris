#!/bin/bash

Gates=( 'And' 'Or' 'Xor' 'Mux' 'DMux' 'Not16' 'And16' 'Or16' 'Mux16' 'Mux4Way16' 'Mux8Way16' 'DMux4Way' 'DMux8Way' );

for gate in "${Gates[@]}"; do
  echo "Testing '$gate'"
  HardwareSimulator projects/01/$gate.tst
  echo
done
