; Exercicio 1 - Dalton Lima
; 04-04-2016
;
; lista 2 - exercicio 2
; 2. Transcreva as expressões numéricas abaixo para um programa em Assembly:
; a.) X=A + (B *C) – (D * F) + G – H
;
; b.) X=H ­ B *(­D) + (­C) * G + A
;
; Retorne o valor de X para o sistema operacional. Atribua às incógnitas A..H
; a classificação da respectiva letra no alfabeto. Por exemplo, o resultado da
; primeira expressão deve ser ­18 e deve retornar 238 (Por quê?).

SECTION .data        ;data section

a    dw 1  ; int has 1 byte
b    dw 2
c    dw 3
d    dw 4
e    dw 5
f    dw 6
g    dw 7
h    dw 8
x    dw 0

SECTION .text     ; code section

global _start

;Program entry point

_start:

; B * C
mov ax, [b]              ; move B to ax
mov bx, [c]              ; move C to bx
mul bx                    ; multiplies and c * al, and saves the result in AX and AL
mov ecx, eax              ; saves the higher part of the last multiplication


; D * F
;mov ax, [d]             ; move D to al
;mov bx, [f]              ; move F to bx
;mul bx                   ; multiplies and f * al, and saves the result in AX and AL
;mov ebx, eax

mov edx,5              ; "size of the string"
mov ebx,1               ; arg1, "where to write", screen
;mov x, [cx]
;mov ecx,[x]            ; arg2 pointer to string "type"
mov eax,4              ; write syout command to int 80 hex "what we want to do"
int 0x80               ; interrupt 80 hex, call kernel "return"

mov ebx,0              ; exit code, 0 = normal
mov eax,1              ; exit command to kernel
int 0x80               ; interrupt 80hex, call kernel
