gerbil: gcc
	gxc -ld-options `pwd`/lib/libplus.o plus.ss

gcc:
	gcc-8 -c -fPIC -o lib/libplus.o lib/libplus.c
