;Exemplo condicionais

    SECTION .data ; data section

msge:   DB    'IGUAIS    ',10
msgne:  DB    'DIFERENTES',10

    SECTION .text

global _start

;Program entry point
_start:

        mov eax,12
        mov ebx,11
        cmp eax,ebx
        je lequ

ldiff:  mov ecx,msgne
        jmp lmsg

lequ:   mov ecx,msge

lmsg:   mov edx,11  ;string lenght
        mov ebx,1   ;where to writem screen
        mov eax,4   ;write syout command to int 80hex
        int 0x80    ;interrupt 80hex, call kermel

        mov ebx, 0  ;exit code, 0=normal
        mov eax,1   ;exit command to kernel
        int 0x80    ;interrupt 80hex, call kermel
