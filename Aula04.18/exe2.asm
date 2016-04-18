;Exemplo condicionais -- Calcula o menor

    SECTION .data ; data section

na:   DB    -3
nb:   DB    3
nc:   DB    5


    SECTION .text

global _start

;Program entry point
_start:

        mov al,[na]
        mov bl,[nb]
        cmp al,bl
        jl c1na
        mov al,[nc]
        jmp c1nb

c1na:   mov bl,[nc]

c1nb:   cmp al,bl

        jl ral
        jmp fim

ral:    mov bl,al
fim:    mov eax,1


        int 0x80    ;interrupt 80hex, call kermel
