#!/bin/bash

for i in 1 2
do
    read -p "x값 입력: " x
    awk -v x="$x" 'BEGIN {
        printf "y = %.2f\n", 0.5*x*x
    }'
done
