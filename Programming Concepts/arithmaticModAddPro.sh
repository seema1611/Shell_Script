#!/bin/bash

read -p "Enter First Number: " a
read -p "Enter Second Number: " b
read -p "Enter Third Number: " c

Mod=$(( $a % $b ))
Add=$(( $Mod + $c))

echo $Add
