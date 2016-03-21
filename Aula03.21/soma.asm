;soma 4 de "mov eax, 4" e o 0 de "add eax, 48" e printa na tela a soma.

SECTION .data        ;data section

char: db 'A'; the string to print

SECTION .text         ; code section

global _start

;Program entry point

_start:

mov eax,4
;add   eax,0x30
add eax,48

mov [char],eax

mov edx,1    ;arg3
mov ebx,1    ; agr1, where to write, screen
mov ecx,char ;arg2 pointer to string
mov eax,4    ; write syout command to int 80 hex
int 0x80     ; interrupt 80 hex, call kernel

mov ebx,0
mov eax,1       ; exit command to kernel
int 0x80        ; interrupt 80hex, call kernel
