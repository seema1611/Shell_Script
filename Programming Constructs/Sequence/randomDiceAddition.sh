#!/bin/bash

R1=$((RANDOM % 6 + 2))
R2=$((RANDOM % 5 + 1))

echo $(( $R1 + $R2))
