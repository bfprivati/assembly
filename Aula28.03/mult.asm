;********************************
; Multiplicação
;********************************

SECTION .data        ;data section

var1:   db  10h
var2:   db  10


SECTION .text         ; code section

global _start

;Program entry point

_start:

  mov ax,[var1]
  mov bx,[var2]
  mul bx  ; ax * bx


  mov ebx,eax
  mov eax,1       ; exit command to kernel
  int 0x80        ; interrupt 80hex, call kernel
