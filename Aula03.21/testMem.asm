SECTION .data        ;data section

char: db 'A'; the string to print

SECTION .text         ; code section

global _start

;Program entry point

_start:

mov ebx,[char]   ; conteudo de char
;mov ebx,char    ; endereço de char
;lea ebx,[char]  ;endereço de char
;lea ebx,char    ;invalido

mov ebx,0
mov eax,1       ; exit command to kernel
int 0x80        ; interrupt 80hex, call kernel
