
; xchg
SECTION .data        ;data section

univ:       DB  'UNESP',0AH ; strubg def

SECTION .text         ; code section

global _start

;Program entry point

_start:

mov eax,4       ; triste syout command to int 80 hex
mov ebx,1       ; arg1. where to write, screen
mov edx,univ    ;arg2 pointer to string
mov ecx,6       ;arg3, lenght of string to print
xchg ecx,edx
int 0x80        ; interrup 80 hex, call kernel


mov ebx,0
mov eax,1       ; exit command to kernel
int 0x80        ; interrupt 80hex, call kernel
