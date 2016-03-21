;executamos a shell nasm, e depois seeReturn, para retornar do sistema o valor

SECTION .data        ;data section

; test : DB 'X'
msg:     DB 'BI'

SECTION .text     ; code section

global _start

;Program entry point

_start:

;mov ebx,msg
mov ebx,[msg]


mov eax,1         ; exit command to kernel
int 0x80          ; interrupt 80hex, call kernel
