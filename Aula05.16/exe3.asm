%include "macro.txt"

  SECTION .data
var1: db 5
var2: db 10h

  SECTION .text

  global _start
  _start:
    mov edx, [var1]
    dobro edx
    quadrado edx

  mov ebx, edx
  mov eax, 1
  int 0x80
