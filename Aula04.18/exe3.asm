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
  mov al, [idade]      ; nao pode votar
  mov bl, [minAge]
  cmp al, bl
  jl mensagem1

  mov bl, [rightAge]  ;voto facultativo
  cmp al, bl
  jl mensagem2

  mov bl, [maxAge]  ;voto facultativo
  cmp al, bl
  jae mensagem2

  mov bl, [rightAge]
  cmp al, bl
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
