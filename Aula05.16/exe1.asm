  SECTION .data
var1: db 4
var2: db 10h

  SECTION .text
%macro dobro 0
  add EAX, EAX
%endmacro

%macro quadrado 0
  mov ebx, EAX
  mul ebx
%endmacro

  global _start
  _start:
    mov eax, [var1]
    dobro
    quadrado
    mov ebx, eax
    mov eax, 1
    int 0x80
