#!/bin/bash

Gates=( 'And' 'Or' 'Xor' 'Mux' 'Dmux' 'Not16' 'And16' 'Or16' 'Mux16' 'Mux4way16' 'Mux8way16' 'Dmux4way' 'Dmux8way' );

for gate in "${Gates[@]}"; do
  echo "Testing $gate"
  HardwareSimulator projects/01/$gate.tst
  echo
done
