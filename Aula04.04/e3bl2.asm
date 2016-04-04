
  SECTION .data

var: db 24
A: db 1

  SECTION .text     ;code section

  global _start

;program entry point
  _start:

  xor eax, eax    ; zerar registrador

  mov eax, [A]
  not eax         ; numero negativo
  inc eax         ; numero negativo

  mov bx, [var]

  mul bx

  mov ebx,eax     ; print on screen
  mov eax,1       ; exit command to kernel
  int 0x80        ; interrupt 80hex, call kernel
