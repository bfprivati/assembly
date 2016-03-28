; **************************
; Exemplo de Resolução de Expressões

; R= (A - B) * ( D + E ) - F
; A = 10; B = 8; D = 1; E = 3; F = 2; R = 6


  SECTION .data
A:  db 10
B:  db 8
D:  db 1
E:  db 3
F:  db 2

  SECTION .text     ;code section

  global _start

;program entry point
  _start:

  xor eax, eax    ; zerar registrador
  mov ax, [A]     ; move A to the ax registrator
  sub ax, [B]

  mov bx, [D]     ; move A to the ax registrator
  add bx, [E]

  mul bx

  sub eax, [F]

  mov ebx,eax     ; print on screen
  mov eax,1       ; exit command to kernel
  int 0x80        ; interrupt 80hex, call kernel
