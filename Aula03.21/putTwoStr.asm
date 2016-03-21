SECTION .data        ;data section

depto :   DB 'DEMAC',0AH ; string def
unidade:  DB 'I'
          DB 'G'
          DB 'C'
          DB 'E'
          DB 0XA

SECTION .text         ; code section

global _start

;Program entry point

_start:

mov ebx,1           ; arg1, where to write, screen (monitor)
mov ecx,unidade     ; arg2 pointer to string ( guarda o a)
mov eax,4           ; write syout command to int 80 hex (escreve a saida)
mov edx,5           ; syze of
int 0x80            ; interrupt 80 hex, call kernel

mov ebx,1
mov ecx,depto       ;  arg2 pointer to string ( guarda o a)
mov eax,4           ; write syout command to int 80 hex (escreve a saida)
mov edx,6
int 0x80            ; interrupt 80 hex, call kernel

mov ebx,0
mov eax,1           ; exit command to kernel
int 0x80            ; interrupt 80hex, call kernel
