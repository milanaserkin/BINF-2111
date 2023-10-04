#!/bin/bash

#2
sed 's/\t/,/g' $1 >${1%.tsv}.csv
cat ${1%.tsv}.csv

#3
string1="This is a string"
string2="Hello"
string3="Strings are very cool"
leng1=${#string1} 
leng2=${#string2} 
leng3=${#string3}

if [[ $leng1  -gt $leng2 && $leng1 -gt $leng3 ]]; then 
	echo "String 1:$string1 is the largest"
elif [[ $leng2 -gt $leng3 && $leng2 -gt $leng1 ]]; then
	echo "String 2:$string2 is the largest"
else
	echo "String 3: $string3 is the largest"
fi

#4
for file in *.fasta; do
	echo "$file"
	grep ">" $file 
done

#5
sed -n "$2,$3p" $4

#Bonus I
start="^ATG"
serine="AGT|AGC"
arginine="AGA|AGG"
stop="TAA$|TAG$|TGA$"
egrep -o "$start" example2.fasta | wc -l
egrep -o "$serine" example2.fasta | wc -l
egrep -o "$arginine" example2.fasta | wc -l
egrep -o "$stop" example2.fasta | wc -l
#Total Count
egrep -o "$start|$serine|$arginine|$stop" example2.fasta | wc -l

#sed -e 's/ATG/M/g' -e 's/AGT\|AGC/S/g' -e 's/AGA\|AGG/R/g' -e 's/TAA\|TAG\|TGA/*/g' example2.fasta > newexample2.fasta
sed -E -e 's/ATG/M/g' -e 's/(AGT|AGC)/S/g' -e 's/(AGA|AGG)/R/g' -e 's/(TAA|TAG|TGA)/*/g' example2.fasta > newexample2.fasta    
cat example2.fasta
cat newexample2.fasta

#Bonus II
for file in "$@"; do
if [ -f "$file" ]; then
 if [[ "$file" == *.txt ]]; then
        echo "skip"
    else 
	new_file="${file%.csv}.txt"
	echo "new file created: $new_file"
      fi
    fi
done
