SECTION .data        ;data section

A:  db  100
B:  db  120
C:  db  110

SECTION .text         ; code section

global _start

_start:

  mov eax, [A]
  mov ebx, [B]
  mov ecx, [C]

  cmp eax, ebx
  jb menorA
  cmp ebx, ecx
  jb menorB
  jmp menorC

  menorA:
    cmp eax, ecx
    jb fim
    jmp menorC

  menorB:
    mov eax, ebx
    jmp fim

  menorC:
    mov eax, ecx
    jmp fim

  fim:
    mov ebx, eax
    mov eax,1       ; exit command to kernel
    int 0x80        ; interrupt 80hex, call kernel
