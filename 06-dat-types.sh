#!/bin/bash

NUM1=$1
NUM2=$2

SUM=$(($NUM1 + $NUM2))

echo " the sum is : ${SUM}"

echo " HOw many args passed : $#"
echo " All args passed: $@"
echo " Script name: $0"
echo " $*"
echo " $?"
echo " $-"
echo " $!"