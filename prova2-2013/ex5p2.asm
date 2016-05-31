; Escreva uma macro que exiba uma "string" atraves de uma interrupcao. A macro
; deve receber dois parametros:
; (1) um endereco de memoria que contem a "string"
; (2) tamanho da string a ser exibida
;
; autor: Dalton Lima
; github: @daltonbr

section .data
message: db 'Hello World!',10
message2: db 'Second Message',10
lenght equ $-message
lenght2 equ $-message2

section .text

%macro printString 2
xor ecx, ecx
xor edx, edx
xor eax, eax
mov ecx, %1     ;O QUE VAI SER ESCRITO
mov edx, %2     ;TAMANHO DA STRING
mov ebx, 1     ;CODIGO DA ONDE VAI SER ESCRITO (1TELA)
mov eax, 4      ;write sysout command to int 80 hex
int 0x80
%endmacro

global _start
_start:
  printString message, lenght

  mov ebx, 0
  mov eax, 1    ; exit command to kernel
  int 0x80      ; interrupt 80hex, call kernel
  printString message2, lenght2

  mov ebx, 0
  mov eax, 1    ; exit command to kernel
  int 0x80      ; interrupt 80hex, call kernel
