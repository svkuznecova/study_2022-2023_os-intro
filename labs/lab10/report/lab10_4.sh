#!/bin/bash
mkdir skolko
find $1 -name "*$2" -exec cp {} skolko \;
cd skolko
ls -l | ws
cd
rm -r skolko
