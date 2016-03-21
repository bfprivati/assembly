SECTION .data        ;data section

charA:   db 'A',10    ; the string to print
;char:   db 0x41,0Ah ; the string to print
;char:   db 41h,0ah  ; the string to print
;char:   db 65,10    ; the string to print
charB:   db 10, 'B',10,10,10,10,10,10,10,10,10,10

SECTION .text         ; code section

global _start

;Program entry point

_start:

; para colocar outras letras, copiar e colar os comandos abaixo
; acrescenta 10 a letra, para dar linhas

mov edx,2       ; tamanho ---> posso mudar apensa o tamanho
mov ebx,1       ; arg1, where to write, screen (monitor)
mov ecx,charA    ; arg2 pointer to string ( guarda o a)
mov eax,4       ; write syout command to int 80 hex (escreve a saida)
int 0x80        ; interrupt 80 hex, call kernel

mov edx,10       ; tamanho ---> posso mudar apensa o tamanho
mov ebx,1       ; arg1, where to write, screen (monitor)
mov ecx,charB    ; arg2 pointer to string ( guarda o a)
mov eax,4       ; write syout command to int 80 hex (escreve a saida)
int 0x80        ; interrupt 80 hex, call kernel

mov eax,1       ; exit command to kernel
int 0x80        ; interrupt 80hex, call kernel
