;********************************
; SEGUNDO EXEMPLO DE ADD
;********************************

SECTION .data        ;data section

var1:  db  10
var2:  db  10h
var3:  db  28
var4:  db  0
var5:  db  30,60
var6:  db  20

SECTION .text         ; code section

global _start

;Program entry point

_start:

  ;mov eax,[var1]
  ;add eax,[var2]
  ;mov ebx,eax

  ;mov eax,var3
  ;add eax,var4
  ;mov  ebx,eax

  mov eax,var5
  add eax,1
  mov ebx,[eax]
  add ebx,[var6]

  mov eax,1       ; exit command to kernel
  int 0x80        ; interrupt 80hex, call kernel
