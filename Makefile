#
# ethersrv makefile for Linux and FreeBSD (GCC and clang)
# http://etherdfs.sourceforge.net
#
# Copyright (C) 2017, 2018 Mateusz Viste
# Copyright (c) 2020 Michael Ortmann
#

CFLAGS := -O2 -Wall -std=gnu89 -pedantic -Wextra -s -Wno-long-long -Wno-variadic-macros -Wformat-security $(CFLAGS)

CC ?= gcc

ethersrv-linux: ethersrv.c fs.c fs.h lock.c lock.h debug.h
	$(CC) ethersrv.c fs.c lock.c -o ethersrv $(CFLAGS)

clean:
	rm -f ethersrv *.o
