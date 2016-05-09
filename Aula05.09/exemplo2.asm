; exemplo array
    SECTION .data ; data section

array:   DB  5,3,6,7,4,2,8,1,5,9
SIZE     EQU 10


    SECTION .text

global _start

;Program entry point
_start:

        XOR bl,bl
        xor ecx,ecx
        jmp for_cond

for_body:

        mov al,[array+ECX]
       ;mov al,[array+cl] ; invalid effective address, because address is 32 bits
        add bl,al
        inc ecx

for_cond:

        cmp ecx, SIZE
        jl for_body

        mov eax,1   ;exit command to kernel
        int 0x80    ;interrupt 80hex, call kermel
