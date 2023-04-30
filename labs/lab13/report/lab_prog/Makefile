#
# Makefile
#

CC = gcc
GFLAGS = -g
LIBS = -lm
calcul: calculate.o main.o
        $(CC) calculate.o main.o -o calcul $(LIBS)

calculate.0: calculate.c calculate.h
        $(CC) -c calculate.c $(CFLAGS)

main.o: main.c calculate.h
        $(CC) -c main.c $(CFLAGS)

clean:
        -rm calcul *.o *~

# End Makefile
