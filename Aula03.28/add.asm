;********************************
; PRIMEIRO EXEMPLO DE ADD
;********************************

SECTION .data        ;data section

SECTION .text         ; code section

global _start

;Program entry point

_start:

  ;mov eax,10
  ;mov eax,10
  ;mov ebx,eax

  ;mov eax,10h
  ;add eax,10h
  ;mov ebx,eax

  mov eax,0x10
  add eax,10
  mov ebx,eax

  mov eax,1       ; exit command to kernel
  int 0x80        ; interrupt 80hex, call kernel
