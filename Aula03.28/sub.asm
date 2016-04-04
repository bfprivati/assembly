;********************************
; Sub/and
;********************************

SECTION .data        ;data section

var1:  db  7fh; 01111111
var2:  db  80h; 10000000


SECTION .text         ; code section

global _start

;Program entry point

_start:
  ;mov eax,[var2]
  ;sub eax,[var1]

  mov eax,[var1]
  sub eax,[var2]
                 ;0-0000001 > 0-11111110 > +1 1111111

  mov ebx,eax
  mov eax,1       ; exit command to kernel
  int 0x80        ; interrupt 80hex, call kernel
