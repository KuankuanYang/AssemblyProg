#!/bin/bash

rm test.s
rm test.exe

touch test.s
cat lib/prologue.s >> test.s
cat testprogs/gcd.calc | ./bin/calc3i.exe >> test.s
cat lib/epilogue.s >> test.s

gcc -no-pie test.s src/gcd.s -o test.exe
./test.exe
