#!/bin/sh

#키보드에서 ctrl + C ㅇ입력햇을때, 현재상태를 출력하며 종료하기

count=0
trap ' echo
      echo "Try count: $count"
      exit ' INT

while :
do
  curl -o /dev/null $1
  count=$(expr $count + 1)
  sleep 1
done

