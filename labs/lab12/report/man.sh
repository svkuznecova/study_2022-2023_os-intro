#!/bin/bash
c=$1
if [ -f /usr/share/man/man1/$c.1.gz ]
then
    gunzip -c /us/share/man/man1/$1.1.gz | less
else
    echo "Справки по данной команде нет"
fi    
