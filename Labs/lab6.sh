#!/bin/bash

#1
m="Methionine"
l="Leucine"
c="Cysteine"
a="Alanine"
v="Valine"
t="Tyrosine"
p="Proline"

AminoAcids=("$m" "$l" "$c" "$a" "$v" "$t" "$p")

for acid in "${AminoAcids[@]}";
do
	echo ${acid};
        echo acid length is ${#acid}
#echo ${AminoAcids[@]} 
done

#2
while read line
do
    chars=$(echo $line | wc -c)
	echo Line: $line
	echo Character count: $chars
done <$1

#3
counter=0
var="This script will run again"
until [[ ! $counter -lt 10 ]]
do
	echo $var
	var=$var" and agian"
	((counter++))
done
echo Unit it is done

#4
info() {
	echo Name: Milana Serkin
	echo My username: $USER
	echo The date: $(date)
	echo Current Directory: $PWD
}
info  


#5
adding() {
	echo Number 1: $1
	echo Number 2: $2
	sum=$(($2 + $1))
	echo Sum: $sum
	return  0 
}
adding 4 5
adding 1 3
adding 10 40
