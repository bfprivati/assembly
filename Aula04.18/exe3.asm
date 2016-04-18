; Giovanna CAzelato Pires RA 141151171

SECTION .data        ;data section

msg1: db "O cidadao nao pode votar", 24
msg2: db "O voto e facultativo", 20
msg3: db "O cidadao e obrigado a votar", 29
minAge: db 16
maxAge: db 70
rightAge: db 18
idade: db 65


SECTION .text         ; code section

global _start

;Program entry point

_start:

       ;move 2 para vetor[1]
  mov ax, [idade]      ; nao pode votar
  mov bx, [minAge]
  cmp bx, ax
  jl mensagem1

  mov bx, [rightAge]  ;voto facultativo
  cmp bx, ax
  jl mensagem2

  mov bx, [maxAge]  ;voto facultativo
  cmp bx, ax
  jae mensagem2

  mov bx, [rightAge]
  cmp bx, ax
  jae mensagem3   ;obrigatorio

mensagem1:
  mov ecx, msg1
  mov edx, 24
  jmp fim

mensagem2:
  mov ecx, msg2
  mov edx, 20
  jmp fim

mensagem3:
  mov ecx, msg3
  mov edx, 29
  jmp fim

fim:
  mov ebx,1
  mov eax,4       ; exit command to kernel
  int 0x80        ; interrupt 80hex, call kernel

  mov ebx, 0
  mov eax, 1
  int 0x80
