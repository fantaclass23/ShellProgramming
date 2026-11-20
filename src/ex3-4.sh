#!/bin/bash

scores=()

while true
do
    echo "==================="
    echo "1) 과목 성적 추가"
    echo "2) 모든 점수 보기"
    echo "3) 평균 점수 확인"
    echo "4) 평균 등급 GPA"
    echo "5) 종료"
    echo "==================="

    read -p "번호 선택: " menu

    case $menu in
        1)
            read -p "점수 입력: " score
            scores+=("$score")
            ;;
        2)
            echo "점수: ${scores[*]}"
            ;;
        3|4)
            if [ ${#scores[@]} -eq 0 ]; then
                echo "점수가 없습니다."
                continue
            fi

            sum=0
            for s in "${scores[@]}"
            do
                sum=$((sum+s))
            done

            avg=$((sum/${#scores[@]}))

            if [ "$menu" -eq 3 ]; then
                echo "평균 점수: $avg"
            else
                if [ "$avg" -ge 90 ]; then
                    gpa=4.5
                elif [ "$avg" -ge 80 ]; then
                    gpa=3.5
                elif [ "$avg" -ge 70 ]; then
                    gpa=2.5
                elif [ "$avg" -ge 60 ]; then
                    gpa=1.5
                else
                    gpa=0.0
                fi
                echo "GPA: $gpa"
            fi
            ;;
        5)
            echo "종료합니다."
            break
            ;;
    esac
done
