#!/bin/bash

rm test.s
rm test.exe

touch test.s
cat lib/prologue.s >> test.s
cat testprogs/fact.calc | ./bin/calc3i.exe >> test.s
cat lib/epilogue.s >> test.s

gcc -no-pie test.s src/fact.s -o test.exe
./test.exe
