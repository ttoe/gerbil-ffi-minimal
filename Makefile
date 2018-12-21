lib_dir = "-I$(shell pwd)/lib"

gerbil:	gcc
	gxc -cc-options $(lib_dir) -ld-options `pwd`/lib/libplus.o plus.ss

gcc:
	gcc -c -fPIC -o lib/libplus.o lib/libplus.c
