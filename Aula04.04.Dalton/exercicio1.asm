; Exercicio 1 - Dalton Lima
; 04-04-2016
;
;  LIsta 1
;  2. Inicialize uma estrutura de memória de 4 posições com o valor 1. Utilizando as
;  instruções de transferência de memória, realize as seguintes operações:
;  Valor 2 para a segunda posição da estrutura;
;  Valor 4 para a terceira posição da estrutura;
;  Valor 8 para a última posição da estrutura.
;  Exiba os valores de todas as posições desse “vetor” (Saída esperada: “1248”)

SECTION .data        ;data section

var   TIMES 5 db 1 ; var has 4 bytes
;char:   db 0x41   ; the string to print

SECTION .text     ; code section

global _start

;Program entry point

_start:

mov BYTE [var],48       ; set 0 to the first position
add BYTE [var],1        ; adds 0
mov ecx,var             ; move the address of 1st position to an registrator
add ecx, 1       ; move 1 position UP in the array

mov BYTE [ecx],48       ; set 0 to the first position
add BYTE [ecx],2        ; adds 2
add ecx,1        ; move 1 position UP in the array

mov BYTE [ecx],48       ; set 0 to the first position
add BYTE [ecx],4        ; adds 4
add ecx, 1       ; move 1 position UP in the array

mov BYTE [ecx],48       ; set 0 to the first position
add BYTE [ecx],8        ; adds 8
add ecx, 1       ; move 1 position UP in the array

mov BYTE [ecx],10       ; add \n (LF)
;sub BYTE [ecx],4        ; go back 4 position (start of the array)

mov edx,5              ; "size of the string"
mov ebx,1              ; arg1, "where to write", screen
mov ecx,var            ; arg2 pointer to string "type"
mov eax,4              ; write syout command to int 80 hex "what we want to do"
int 0x80               ; interrupt 80 hex, call kernel "return"

mov ebx,0              ; exit code, 0 = normal
mov eax,1              ; exit command to kernel
int 0x80               ; interrupt 80hex, call kernel
