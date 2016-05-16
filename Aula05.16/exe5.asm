SECTION .data

vetor: dw 10
cont: db 0

%macro printi 0
  xor ECX, ECX

  mov BL, 10

laco:
  div BL

  add AH, 48
  mov [vetor+ECX], AH
  inc ECX
  mov AH, 0
  cmp AL, 0
jne laco

  mov edi, ecx
  mov ecx, vetor
  add ecx, edi
  inc edi
laco2:
  mov edx,1       ; tamanho da palavra pra colocar
  mov ebx,1       ; arg1, where to write, screen (monitor)
  mov eax,4       ; write syout command to int 80 hex (escreve a saida)
  int 0x80        ; interrupt 80 hex, call kernel

  dec ecx
  dec edi
jnz laco2


%endmacro

SECTION .text

global _start
_start:
  mov AX, 256
  printi

  mov ebx,0
  mov eax,1       ; exit command to kernel
  int 0x80        ; interrupt 80hex, call kernel
