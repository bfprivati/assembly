; Escreva um programa em Assembly que defina uma posicao de memoria identificada
; pelo rotulo "X" contendo um numero inteiro nao negativo e exiba uma mensagem
; informando se o numero eh par ou impar.
; autor: Dalton Lima
; github: @daltonbr

section .data
X: dw 32
msgPar: db 'par',10
msgParLenght: equ $-msgPar
msgImpar: db 'impar',10
msgImparLenght: equ $-msgImpar

section .text
global _start

%macro printMsg 2
mov ecx, %1
mov edx, %2
mov ebx, 1
mov eax, 4
int 0x80
%endmacro

_start:
xor eax, eax
xor edx, edx

mov eax, [X]
mov bl, 2
idiv bl  ; AL Quocient - AH - Remainder
xor ebx, ebx
cmp ah, 0
je ehPar
jmp ehImpar

ehPar:
printMsg msgPar, msgParLenght
jmp end

ehImpar:
printMsg msgImpar, msgImparLenght
jmp end

end:
  mov ebx, 0
  mov eax, 1    ; exit command to kernel
  int 0x80      ; interrupt 80hex, call kernel
