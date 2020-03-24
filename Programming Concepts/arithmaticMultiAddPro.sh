#!/bin/bash

read -p "Enter First Number: " a
read -p "Enter Second Number: " b
read -p "Enter Third Number: " c

Multi=$(( $a * $b ))
Add=$(( $Multi + $c))

echo $Add
