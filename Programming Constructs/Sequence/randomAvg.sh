#!/bin/bash -x

p=$((RANDOM % 50 + 10))
q=$((RANDOM % 50 + 10))
r=$((RANDOM % 50 + 10))
s=$((RANDOM % 50 + 10))
t=$((RANDOM % 50 + 10))

Add=$(( $p + $q + $r + $s + $t))
echo $Add

Average=$((Add/5))
echo $Average
