#!/bin/bash

echo "$1 $2 $3" >> DB.txt

echo "저장된 팀원 정보:"
cat DB.txt
