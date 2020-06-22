#!/bin/sh -l
DIR=tests/
cd $DIR || exit
echo `ls`
for test in *.sh; do
  ./"$test"
done
