;********************************
; Sub/muv/xor
;********************************

SECTION .data        ;data section
                
var1:  db  7fh; 01111111
var2:  db  40h; 01000000


SECTION .text         ; code section

global _start

;Program entry point

_start:

  ;xor eax,eax ; zerar o registrador eax
  ;mov eax,[var1]
  ;sub eax,[var2]

  xor eax,eax     ;zera registrador
  mov eax,[var1]
  and eax,[var2]
  dec eax ;decrementa


  mov ebx,eax
  mov eax,1       ; exit command to kernel
  int 0x80        ; interrupt 80hex, call kernel
