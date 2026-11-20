#!/bin/bash

echo 'export MYENV="Hello Shell"' >> ~/.bashrc

export MYENV="Hello Shell"
echo "환경변수: $MYENV"

bash -c 'echo "새로운 셸: $MYENV"'

unset MYENV
echo "해제 후: ${MYENV:-없음}"
