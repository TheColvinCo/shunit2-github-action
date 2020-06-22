#!/bin/sh -l
cd $SHUNIT_TEST_FOLDER || exit
for test in *.sh; do
  ./"$test"
done
