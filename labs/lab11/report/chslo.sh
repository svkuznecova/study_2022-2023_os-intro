#!/bin/bash
gcc chslo.c -o chslo
./chslo
code=$?
case &code in
    0)echo "Число меньше 0";;
    1)echo "Чичло больше 0";;
    2)echo "Число равно 0"
esac    
	 
	    
