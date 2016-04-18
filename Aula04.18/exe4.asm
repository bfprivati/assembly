;1.) Escreva um programa em Assembly que determine a possibilidade ou obrigatoriedade
;de voto de acordo com a idade  do eleitor:
;idade < 16
; O cidadão não pode votar!
;Idade >= 16 e idade < 18 ou idade >= 70
;O voto é facultativo.
;Idade >= 18 e idade < 70
;O cidadão é obrigado a votar.

    SECTION .data ; data section

msg1:   DB    "X eh valido", 11
msg2:   DB    "X nao eh valido", 15

minX: DB    50
maxX: DB    100
X:  DB    0

    SECTION .text

global _start

;Program entry point
_start:

        mov al,[X]

        mov bl,0
        cmp al,bl
        je valido ; se idade for menor que minX

        mov bl,[minX]
        cmp al,bl
        jl  invalida

        mov bl,[maxX]
        cmp al,bl
        jg invalida

        jmp valido

invalida: mov ecx,msg2
          mov edx,15 ;tamanho
          jmp fim

valido:   mov ecx,msg1
          mov edx,11 ;tamanho
          jmp fim

fim:    mov ebx,1       ;arg1, where to write , screen
        mov eax,4       ;write sysout command to int 80 hex
        int 0x80

        mov ebx, 0
        mov eax,1   ;exit command to kernel
        int 0x80    ;interrupt 80hex, call kermel
