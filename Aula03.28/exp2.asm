; **************************
; Exemplo de Resolução de Expressões

; R= F + A * E - D * B
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
  mov bx, [E]
  mul bx          ; multiply ax, bx
  mov ecx, eax

  mov ax, [D]
  mov bx, [B]
  mul bx          ;D*B

  sub ecx, eax

  add ecx, [F]

  mov ebx,ecx     ; print on screen
  mov eax,1       ; exit command to kernel
  int 0x80        ; interrupt 80hex, call kernel
