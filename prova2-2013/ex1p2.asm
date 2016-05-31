; Dados dois numeros inteiros "nao negativos" b, e, escreva um programa em
; Assembly que inicialize duas posicoes de memoria utilizando a diretiva DB e
; rotulos "b" e "e" e retorne para o sistema operacional o valor de "b"
; Nota autor: o enunciado parece que pede pra que facamos Base e Expoente em um
; possivel operacao de exponenciacao, pois do contrario, o exercicio se tornaria
; muito elementar

section .data
b: DB 2
e: DB 7
; DD 32bits(4bytes) - DW 16 bits(2bytes) - DB 8 bits(1byte)

section .text
global _start

_start:
mov eax, 1
;mov bl, [b]
mov dx, 0


expLoop:
  inc edx  ; inc counter
  mul byte[b]
  cmp dx, [e]
  jne expLoop
  jmp end

end:
  mov ebx, eax
  mov eax, 1
  int 0x80
