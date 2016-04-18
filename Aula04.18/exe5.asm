;1.) Escreva um programa em Assembly que determine a possibilidade ou obrigatoriedade
;de voto de acordo com a idade  do eleitor:
;idade < 16
; O cidadão não pode votar!
;Idade >= 16 e idade < 18 ou idade >= 70
;O voto é facultativo.
;Idade >= 18 e idade < 70
;O cidadão é obrigado a votar.

    SECTION .data ; data section

msg1:   db    "Nao forma um triangulo", 22
msg2:   db    "Eh um triangulo equilatero", 26
msg3:   db    "Eh um triangulo escaleno", 24
msg4:   db    "Eh um triangulo isosceles", 25
;msg4_len equ $ - msg4 ;contar variavel

ladoA: db    5
ladoB: db    5
ladoC: db    4

    SECTION .text

global _start

;Program entry point
_start:
        mov al, [ladoA]
        mov bl, [ladoB]
        add al, bl
        mov bl, [ladoC]
        cmp al, bl
        jl invalida

        mov al, [ladoC]
        mov bl, [ladoA]
        add al, bl
        mov bl, [ladoB]
        cmp al, bl
        jl invalida

        mov al, [ladoB]
        mov bl, [ladoC]
        add al, bl
        mov bl, [ladoA]
        cmp al, bl
        jl invalida

;--------------------------------------------------------
        mov al, [ladoA]
        mov bl, [ladoB]
        cmp al, bl
        je ladoigual
        jne umladodiferente

ladoigual:    mov bl, [ladoC]
              cmp al, bl
              je equilatero
              jne isosceles

umladodiferente:    mov bl, [ladoC]
                    cmp al, bl
                    jne doisladodiferente
                    je isosceles

doisladodiferente:  mov al, [ladoB]
                    cmp al, bl
                    je isosceles
                    jne escaleno

equilatero: mov ecx,msg2
            mov edx,26 ;tamanho
            jmp fim

isosceles: mov ecx,msg4
           mov edx,25 ;tamanho
           jmp fim

escaleno: mov ecx,msg3
          mov edx,24 ;tamanho
          jmp fim

invalida: mov ecx,msg1
          mov edx,22 ;tamanho
          jmp fim

;-------------------------------------------------------------------

fim:    mov ebx,1       ;arg1, where to write , screen
        mov eax,4       ;write sysout command to int 80 hex
        int 0x80

        mov ebx, 0
        mov eax,1   ;exit command to kernel
        int 0x80    ;interrupt 80hex, call kermel
