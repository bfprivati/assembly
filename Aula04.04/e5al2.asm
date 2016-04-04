; NEGATIVO = PASSOU
; POSITIVO = REPROVOU
  SECTION .data

P: times 3 db 2
N: times 3 db 8
M: db 50
aux: db 0

  SECTION .text     ;code section

  global _start

;program entry point
  _start:

  mov byte [P+1], 3
  mov byte [P+2], 5

  mov byte [N+1], 6
  mov byte [N+2], 7

  xor eax, eax    ; zerar registrador

  mov ax, [P+0]
  mov bx, [N+0]
  mul bx
  mov ecx, eax
  mov [aux], ecx

  mov ax, [P+1]
  mov bx, [N+1]
  mul bx

  add [aux], eax

  mov ax, [P+2]
  mov bx, [N+2]
  mul bx

  add [aux], eax

  mov ecx, [M]
  sub ecx, [aux]


  mov ebx,ecx     ; print on screen
  mov eax,1       ; exit command to kernel
  int 0x80        ; interrupt 80hex, call kernel
