#!/bin/bash

NUM=$1

if [ $NUM -gt 100 ]
then
    echo "Given number is $NUM greater than 100"
else
    echo "Given number $NUM is zerlesss than 100"
fi