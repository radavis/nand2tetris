// File name: projects/12/ArrayTest/ArrayTest.tst

load,
output-file ArrayTest.out,
compare-to ArrayTest.cmp,
output-list RAM[8000]%D2.6.1 RAM[8001]%D2.6.1 RAM[8002]%D2.6.1 RAM[8003]%D2.6.1;

repeat 1000000 {
  vmstep;
}

output;
