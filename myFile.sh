#!/usr/bin/env bash
if [ "$#" -ne 3  ]; then
    echo "usage:./myFile <filename> <startline> <endline>"
    exit 1
fi
lines=$(cat $1 | wc -l)
echo "Total number of lines: $lines"
if (( $3 > $lines )); then
    echo "Lines do not exist in file"
    exit 1
fi
head -$3 $1 | tail -n $2 > newFile
