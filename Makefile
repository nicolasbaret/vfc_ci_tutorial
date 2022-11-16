CC=clang

all:
	$(CC) main.c -o dotprod

clean:
	rm -f *.vfcrun.h5 *.vfcraw.h5 dotprod *.o
