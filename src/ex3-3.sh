#!/bin/bash

read -p "첫 번째 점수: " a
read -p "두 번째 점수: " b

if [ "$a" -ge 90 ]; then
    echo "첫 번째 등급: A"
else
    echo "첫 번째 등급: B"
fi

if [ "$b" -ge 90 ]; then
    echo "두 번째 등급: A"
else
    echo "두 번째 등급: B"
fi

avg=$(((a+b)/2))
echo "평균 점수: $avg"

if [ "$avg" -ge 90 ]; then
    echo "평균 등급: A"
else
    echo "평균 등급: B"
fi
