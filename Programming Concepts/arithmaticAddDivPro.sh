#!/bin/bash

read -p "Enter First Number : " a
read -p "Enter Second Number : " b
read -p "Enter Third Number : " c

Add=$(( $c + $a ))
Div=$(( $Add * $b ))

echo $Div
