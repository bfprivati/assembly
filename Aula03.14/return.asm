; Exercicio 2: retorna
;  echo $?

  SECTION .text

  global _start

; Program entry point
  _start:

  mov ebx, 15

  mov eax, 1        ; exit
  int 0x80          ; int
