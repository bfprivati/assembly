; **************************
; Exemplo com erro de overflow

; R= F + A * E - D * B
; A = 10; B = 8; D = 1; E = 3; F = 2; R = 6


  SECTION .data
A:  db 65535
B:  db 8
D:  db 1
E:  db 3
F:  db 2

  SECTION .text     ;code section

  global _start

;program entry point
  _start:

  xor eax, eax    ; zerar registrador


  mov eax, [A]     ; move A to the ax registrator
  add eax, [D]        ; multiply ax, b

  mov ebx,eax     ; print on screen
  mov eax,1       ; exit command to kernel
  int 0x80        ; interrupt 80hex, call kernel
