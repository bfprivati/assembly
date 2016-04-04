SECTION .data        ;data section

vetor: times 4  db  1   ;vetor com 4 posicoes com 1

SECTION .text         ; code section

global _start

;Program entry point

_start:

  add byte [vetor+0], 48
  mov byte [vetor+1], 2   ; vetor[i] recebe 2
  add byte [vetor+1], 48  ; em codigo ASCII, 1 = 49
  mov byte [vetor+2], 4
  add byte [vetor+2], 48
  mov byte [vetor+3], 8
  add byte [vetor+3], 48

  mov edx,4       ;TAMANHO DA STRING
  mov ecx,vetor     ;O QUE VAI SER ESCRITO
  mov ebx,1       ;CODIGO DA ONDE VAI SER ESCRITO (1TELA)
  mov eax,4       ;write sysout command to int 80 hex
  int 0x80

  mov ebx,0
  mov eax,1       ; exit command to kernel
  int 0x80        ; interrupt 80hex, call kernel
