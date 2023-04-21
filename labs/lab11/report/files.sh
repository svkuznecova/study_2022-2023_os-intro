#!/bin/bash
opt=$1;
format=$2;
number=$3;
function Files()
{
    for (( i=1; i<=$number; i++)) do
	file=$(echo $formst | tr '#' "$i")
	if [ $opt == "-r" ]
	then
	    rm -f $file
	elif [ $opt == "-r" ]
	then
	    touch $file
	fi
    done
}
Files
