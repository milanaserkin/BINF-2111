#!/bin/bash

m="Methionine"
l="Leucine"
c="Cysteine"
a="Alanine"
v="Valine"

echo $m $l $c $a $v

mlen=${#m}
llen=${#l}
clen=${#c}
alen=${#a}
vlen=${#v}

totallength=$((mlen+llen+clen+alen+vlen))

echo $totallength

