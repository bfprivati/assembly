
; X = H - B * (-D) + (-C) * G + A

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

  mov eax, [B]
  mov bx, [D]
  mul bx
  not eax         ; numero negativo
  inc eax         ; numero negativo
  mov ecx, eax    ; ecx = B * (-D)

  mov eax, [G]
  mov bx, [C]
  mul bx
  not eax         ; numero negativo
  inc eax         ; numero negativo  eax = (-c) * g

  sub [H], ecx
  add [H], eax
  mov eax, [H]
  add eax, [A]


  mov ebx, eax     ; print on screen
  mov eax,1       ; exit command to kernel
  int 0x80        ; interrupt 80hex, call kernel
