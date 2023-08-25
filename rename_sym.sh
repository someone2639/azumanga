#!/bin/bash

shopt -s globstar

if [ "$#" -ne "2" ];
then
    echo "usage: $0 old_name new_name"
    exit 1
fi

#echo "Replace $1 with $2?"
#read
grep -rl "$1" asm/**/*.s src/**/*.c undefined_syms_auto.txt undefined_funcs_auto.txt | xargs sed -i "s/\b$1\b/$2/g"
