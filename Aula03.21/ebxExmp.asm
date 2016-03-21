
; sentive of maiusculo
SECTION .data        ;data section

NUM_OF_ROWS EQU 4
NUM_OF_COLS EQU 3
ARRAY_SIZE  EQU NUM_OF_ROWS * NUM_OF_COLS

%assign SIZE  2
%iassign valor 3

SECTION .text         ; code section

global _start

;Program entry point

_start:

mov ebx,ARRAY_SIZE

%assign SIZE     10
%assign size     20
mov ebx,SIZE

%iassign VaLoR 4 ; ok
mov ebx,vAlOR    ; ok


mov eax,1       ; exit command to kernel
int 0x80        ; interrupt 80hex, call kernel
