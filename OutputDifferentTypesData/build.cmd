gcc -Wall -E main.c -o main.i
gcc -Wall -masm=intel -g3 -S main.i -o main.s
gcc -Wall -g3 -c main.c
gcc -Wall main.o -o main.exe