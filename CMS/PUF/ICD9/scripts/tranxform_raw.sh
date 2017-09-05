#!/bin/bash
input=$1
output=$2
cat $input | awk '{first = $1; $1=""; print first "\t" $0}' | sed "s/ \\+//" > $output 
