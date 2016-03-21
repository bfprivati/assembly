program=$1
as -o $program.o $program.s
ld -o $program $program.o
