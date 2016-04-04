
; X = A + B * C - D * F + G - H


  SECTION .data
A:  db 1
B:  db 2
C:  db 3
D:  db 4
E:  db 5
F:  db 6
G:  db 7
H:  db 8

  SECTION .text     ;code section

  global _start

;program entry point
  _start:

  xor eax, eax    ; zerar registrador

  mov ax, [B]     ; move A to the ax registrator
  mov bx, [C]
  mul bx          ; multiply B, C
  mov ecx, eax    ; ECX = B * C = 6

  mov ax, [D]
  mov bx, [F]
  mul bx          ; EAX = D*F = 24

  add ecx, [A]  ; 7
  sub ecx, eax
  add ecx, [G]
  sub ecx, [H]

  mov ebx,ecx     ; print on screen
  mov eax,1       ; exit command to kernel
  int 0x80        ; interrupt 80hex, call kernel
