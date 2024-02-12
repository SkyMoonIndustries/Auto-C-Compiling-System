#!/bin/bash

if [ "$1" = "" ]
then
echo "You forgot to specify C program!"
echo "Syntax: ./accs.sh <C program name without extension>"
exit
fi
answer3=1

while [ $answer3 -eq 1 ]
do
gcc -g $1.c -o $1

printf 'Run code? (y/n)'
read answer1

if [ "$answer1" != "${answer1#[Yy]}" ] ;then 
    echo "---Code Running---"
        ./$1
fi

printf 'Edit code? (y/n)'
read answer2

if [ "$answer2" != "${answer2#[Yy]}" ] ;then
        nano $1.c
fi

printf 'Continue the loop? (1/0)'
read answer3

done 