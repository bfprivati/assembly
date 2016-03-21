SECTION .data        ;data section

char:   db  "ASSEMBLY"

SECTION .text         ; code section

global _start

;Program entry point

_start:

mov edx,200       ; tamanho da palavra pra colocar
mov ebx,1       ; arg1, where to write, screen (monitor)
mov ecx,char    ; arg2 pointer to string ( guarda o a)
mov eax,4       ; write syout command to int 80 hex (escreve a saida)
int 0x80        ; interrupt 80 hex, call kernel

mov ebx,0
mov eax,1       ; exit command to kernel
int 0x80        ; interrupt 80hex, call kernel
