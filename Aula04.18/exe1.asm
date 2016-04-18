;Exemplo condicionais -- programa que calcula soma aritmética

    SECTION .data ; data section

param:   DB    6


    SECTION .text

global _start

;Program entry point
_start:

        mov al,[param]
        mov bl,0

cont:   add bl,al
        sub al,1
        jnz cont

        mov eax,1   ;exit command to kernel
        int 0x80    ;interrupt 80hex, call kermel
