#!/bin/bash

a=$1
b=$2

echo "덧셈: $((a+b))"
echo "뺄셈: $((a-b))"
echo "곱셈: $((a*b))"

if [ "$b" -ne 0 ]; then
    echo "나눗셈: $((a/b))"
else
    echo "0으로 나눌 수 없습니다."
fi
