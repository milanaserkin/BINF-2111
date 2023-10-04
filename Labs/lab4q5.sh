#!/bin/bash

AminoAcids=("Methionine" "Leucine" "Cysteine" "Alanine" "Valine" "Tyrosine" "Proline")
echo ${AminoAcids[@]}

unset 'AminoAcids[3]'
echo ${AminoAcids[@]}

echo ${AminoAcids[@]:2:3}

AminoAcids+=('Histidine')
echo ${AminoAcids[@]}




