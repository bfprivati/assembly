; exemplo DIV
    SECTION .data ; data section

dividendo:   DW    29
divisor:     DB    4


    SECTION .text

global _start

;Program entry point
_start:

        mov ax, [dividendo]
        mov bl, [divisor]
        div bl

        mov bl, al ;quociente
       ;mov bl, ah ;resto

        mov eax,1   ;exit command to kernel
        int 0x80    ;interrupt 80hex, call kermel
