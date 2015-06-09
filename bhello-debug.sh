#!/bin/sh
rm -f xc xem xeu xhello hello emhello euhello hello.txt emhello.txt euhello.txt
gcc -o  xc -m32 -Ilinux -Iroot/lib -g root/bin/c.c
gcc -o  xem -m32 -Ilinux -Iroot/lib -g root/bin/em.c -lm
gcc -o  xeu -m32 -Ilinux -Iroot/lib -g root/bin/eu.c -lm
gcc -o  xhello -m32 -Ilinux -Iroot/lib -g root/usr/hello.c
./xc -o hello -Iroot/lib root/usr/hello.c
./xc -o euhello -Iroot/lib root/usr/euhello.c
./xc -o emhello -Iroot/lib root/usr/emhello.c
./xhello
./xeu hello
./xeu euhello
./xem emhello
