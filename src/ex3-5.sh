#!/bin/bash

echo "1) 사용자 정보"
echo "2) CPU 사용 정보"
echo "3) 메모리 사용량"
echo "4) 디스크 사용량"

read -p "번호 선택: " n

case $n in
    1) whoami ;;
    2) top -bn1 | head -n 5 ;;
    3) free -h ;;
    4) df -h / ;;
esac
