SECTION .data        ;data section

base:  db  2
expo:  db  3
cont:  db  0

SECTION .text         ; code section



global _start

_start:

  mov ax, 1
  mov bx, [expo]
  mov cx, [cont]


  xor cx, cx
  jmp for_cond
  loop_body:
    mov dx, [base]
    mul dx
    inc cx
  for_cond:
    cmp cx, bx
    jl loop_body


    mov ebx, eax
    mov eax,1       ; exit command to kernel
    int 0x80        ; interrupt 80hex, call kernel
