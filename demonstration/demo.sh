#!/usr/bin/env bash

#compile errors
clear
read 
clear
echo -n "gambl matrixmul.hlial"
read
java -jar /usr/local/lib/seppuku.jar matrixmul_compiletime.hlial
read
less matrixmul_compiletime.hlial
less matrixmul_runtime.hlial
clear
#runtime errors
echo -n "gambl matrixmul.hlial" 
read
java -jar /usr/local/lib/seppuku.jar matrixmul_runtime.hlial  
echo -n "cd codeout && make"
read
cd codeout && make > /dev/null 2>&1
echo -n "./out"
read
./out
read
cd ..
rm -rf codeout
less matrixmul_runtime.hlial
less matrixmul_clean.hlial
clear
#clean
echo -n "gambl matrixmul.hlial" 
read
java -jar /usr/local/lib/seppuku.jar matrixmul_clean.hlial  
echo -n "cd codeout && make"
read
cd codeout && make > /dev/null 2>&1
echo -n "./out"
read
./out
read
cd ..
rm -rf codeout
clear
#Fib 
read
less fib_l.hlial
java -jar /usr/local/lib/seppuku.jar fib_l.hlial && cd codeout && make > /dev/null 2>&1 && ./out
read
cd .. && rm -rf codeout
clear
less fib_r.hlial
java -jar /usr/local/lib/seppuku.jar fib_r.hlial && cd codeout && make > /dev/null 2>&1 && ./out
read
cd .. && rm -rf codeout
clear
read   
java -jar /usr/local/lib/seppuku.jar matrixmul_clean.hlial
clear
echo "/codeout:"
ls -1R codeout
read
open codeout/code.c codeout/kernels/matrixMul.cl 
clear






