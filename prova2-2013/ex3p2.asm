; Considerando o "array" declarado abaixo, escreva um programa em Assembly
; que  calcule a diferenca entre o menor e o maior elemento.
; Observacao: a estrutura abaixo eh apenas um exemplo. O programa deve funcionar
; para quaisquer dados de inicializacao inteiros do tamanho byte e positivos.
; autor: Dalton Lima
; github @daltonbr

section .data
array:  db 2,6,18,13,9,20,10,4,7,30
size:   db 10

section .text
global _start

_start:
  xor ecx, ecx  ; contador = 0
  xor eax, eax
  mov ah, [array+ecx] ; ah ira guardar o maior valor
  mov al, [array+ecx] ; al ira guardar o menor valor

loop:
  inc ecx   ; inc contador

  ifMaior:
  cmp ah, [array+ecx]
  jb atualizaMaior
  endIfMaior:

  ifMenor:
  cmp al, [array+ecx]
  ja atualizaMenor
  endIfMenor:

  cmp cl, [size]   ; contador = tamanho do array
  jne loop         ; qdo estes sao diferente volta para loop (do while)
  jmp calculaDif

calculaDif:
  xor ebx, ebx
  mov bl, ah  ; move para ebx o maior
  sub bl, al  ; subtrai o menor
  jmp end

atualizaMaior:
  mov ah, [array+ecx]
  jmp endIfMaior

atualizaMenor:
  mov al, [array+ecx]
  jmp endIfMenor

end:
  mov eax, 1
  int 0x80
