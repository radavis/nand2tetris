// File name: projects/07/StackArithmetic/StackTest/StackTest.tst

load StackTest.asm,
output-file StackTest.out,
compare-to StackTest.cmp,
output-list RAM[0]%D2.6.2
        RAM[256]%D2.6.2 RAM[257]%D2.6.2 RAM[258]%D2.6.2 RAM[259]%D2.6.2 RAM[260]%D2.6.2;

set RAM[0] 256,

repeat 1000 {
  ticktock;
}

output;
output-list RAM[261]%D2.6.2 RAM[262]%D2.6.2 RAM[263]%D2.6.2 RAM[264]%D2.6.2 RAM[265]%D2.6.2;
output;
