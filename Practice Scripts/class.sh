#!/bin/bash  

#for
for i in {1..5}
do 
	echo "Welcome $i times"
done

#while
x=1
while [ $x -le 5 ]
do 
	echo "Weclcome $x times"
	x=$(($x+1))
done

#until
NUM=1
until [ "$NUM" -gt 1000 ]; do
	echo $NUM
	let NUM=NUM*2
done

#function 
#print_this(){
#echo Hello $1
 #return 5}
 #print_this Mars
#print_this Jupiter 
# echo The previous $?

home=`pwd`
echo =$home

for i in *fna
do 
    grep ">" "$i" | wc -l
    grep "^ATG" "$i" 
done 

