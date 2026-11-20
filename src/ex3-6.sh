#!/bin/bash

folder=$1

mkdir -p "$folder"

for i in {1..5}
do
    touch "$folder/file$i.txt"
done

tar -czf "$folder.tar.gz" "$folder"

mkdir -p "${folder}_unzip"

tar -xzf "$folder.tar.gz" -C "${folder}_unzip"

echo "원본 파일:"
ls "$folder"

echo "압축 해제 결과:"
ls "${folder}_unzip/$folder"
