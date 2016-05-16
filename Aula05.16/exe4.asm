  SECTION .data
base: db 3
exp:  db 3

%macro pot 2
      mov al, 1
      mov bl, %1
      mov cl, %2
ini:  cmp cl, 1
      jl res
      dec cl
      mul bl
      jmp ini
res:  mov %1, al
%endmacro

  SECTION .text

  global _start
  _start:
    mov bl, [base]
    mov cl, [exp]
    pot bl, cl

  mov eax, 1
  int 0x80
