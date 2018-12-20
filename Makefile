gerbil: gcc
	gxc -ld-options `pwd`/libplus.o plus.ss

gcc:
	gcc-8 -c -fPIC -o libplus.o libplus.c
