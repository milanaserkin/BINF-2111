#!/bin/bash

start="ATG"
stop1="TAA"
stop2="TAG"
stop3="TGA"
startcount=$(grep -c "^$start" example2.fasta)
stopcount=$(egrep -c "$stop1$|$stop2$|$stop3$" example2.fasta)
echo " The start codons are $startcount "
echo " The stop codons are $stopcount"
 
