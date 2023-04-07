#!/bin/bash

cd ../cat || exit
make test 2>output
cat ./output
fail_number=$(awk '/Fail test: / {print $3}' < file)
if [ "$fail_number" -ne 0 ]
then
  exit 1
  else exit 0
  fi