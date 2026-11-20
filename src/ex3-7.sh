#!/bin/bash

folder=$1
mkdir -p "$folder"

for i in {1..5}
do
    touch "$folder/file$i.txt"
    mkdir -p "$folder/file$i"
    ln -sf "../file$i.txt" "$folder/file$i/file$i.txt"
done

echo "생성된 파일과 폴더:"
ls "$folder"

echo "링크 확인:"
ls -l "$folder/file1"
