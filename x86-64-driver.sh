#!/bin/bash

#rm test.s
#rm test.exe

#touch test.s
#cat lib/prologue.s >> test.s
#cat testprogs/pi.calc | ./bin/calc3i.exe >> test.s
#cat lib/epilogue.s >> test.s

#gcc -no-pie test.s -o test.exe
#./test.exe

#change the fname.calc to fname
fname=output/$(basename $1 .calc)
#echo $fname

#0 check if fname.s and fname already exist, erase it if already generated.. 

#for test
#if [ -d "$output"]; then
#echo 1
#	rm "output/fname"
#fi
#it works 

if [ -f "$fname" ]; then
#echo 1
rm "$fname";
fi
#works

if [ -f "$fname.s" ]; then 
#echo 1
rm "$fname.s";
fi
#works

#1 append prologe and epilogue, call calc3i.exe 
#touch $fname.s
#cat lib/prologue.s "$1 | ./bin/calc3i.exe" lib/epilogue.s> $fname.s #w
#$1 is fname.calc
cat lib/prologue.s >> $fname.s #w
cat $1 | ./bin/calc3i.exe >> $fname.s #w
cat lib/epilogue.s >> $fname.s #w
#works

flag=0
sflag=0
#sflag=$((sflag + flag))
#echo $sflag

#2 search for fact,Intwo,gcd
if [ $(grep -c 'fact' $fname.s) -gt 0 ]; then  
#echo $(grep -c 'fact' $fname.s)
flag=1  
sflag=$((sflag + flag))
#echo $flag
fi 

if [ $(grep -c 'lntwo' $fname.s) -gt 0 ]; then  
echo $(grep -c 'lntwo' $fname.s)
flag=3  
sflag=$((sflag + flag))
#echo $flag
fi

if [ $(grep -c 'gcd' $fname.s) -gt 0 ]; then
echo $(grep -c 'gcd' $fname.s)  
flag=5  
sflag=$((sflag + flag))
fi

#echo $flag
#echo $sflag

#3 call gcc 
#case $sflag in 
#1)
 #echo "fact"
#esac

sflag=0
case $sflag in
0) 
 #0) gcc -no-pie $fname.s -o fname
 #1) gcc -no-pie $fname.s src/fact.s -o fname
 #3) gcc -no-pie $fname.s src/lntwo.s -o fname
# 5) gcc -no-pie $fname.s src/gcd.s -o fname
# 4) gcc -no-pie $fname.s src/fact.s src/lntwo.s -o fname
# 6) gcc -no-pie $fname.s src/fact.s src/gcd.s-o fname
# 8) gcc -no-pie $fname.s src/lntwo.s src/gcd.s-o fname
# 9) gcc -no-pie $fname.s src/fact.s src/lntwo.s src/gcd.s -o fname
esac