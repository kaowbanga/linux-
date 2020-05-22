#!/bin/bash
str1=$1
str2=$2
a=0
b=0
zero=0
for ((i=1; i<=${#str1}; i++));do
        for ((j=1; j<=${#str2}; j++));do
                if [[ $(echo $str1 | cut -c $i) -eq $(echo $str2 | cut -c $j) ]]; then
                        if [[ $i -eq $j ]]; then
                                (( a+=1 ))
                        else
                                (( b+=1 ))
                        fi
                fi
        done
done

echo $1 $2 "Ans="$a"A"$b"B"
