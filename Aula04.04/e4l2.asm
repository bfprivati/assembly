
  SECTION .data

vetor: times 5 db 5

  SECTION .text     ;code section

  global _start

;program entry point
  _start:

  mov byte [vetor+1], 4
  mov byte [vetor+2], 3
  mov byte [vetor+3], 2
  mov byte [vetor+4], 1

  mov eax, [vetor+0]
  mov bx, [vetor+1]
  mul bx
  mov bx, [vetor+2]
  mul bx
  mov bx, [vetor+3]
  mul bx
  mov bx, [vetor+4]
  mul bx

  mov ecx, [vetor+0]
  add ecx, [vetor+1]
  add ecx, [vetor+2]
  add ecx, [vetor+3]
  add ecx, [vetor+4]

  sub eax, ecx


  mov ebx,eax     ; print on screen
  mov eax,1       ; exit command to kernel
  int 0x80        ; interrupt 80hex, call kernel
