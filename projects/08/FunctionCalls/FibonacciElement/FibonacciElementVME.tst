// File name: projects/08/FunctionCalls/FibonacciElement/FibonacciElementVME.tst

load,  // Load all the VM files from the current directory
output-file FibonacciElement.out,
compare-to FibonacciElement.cmp,
output-list RAM[0]%D1.6.1 RAM[261]%D1.6.1;

set sp 261,

repeat 110 {
  vmstep;
}

output;
