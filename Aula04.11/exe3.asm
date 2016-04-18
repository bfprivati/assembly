;Exemplo condicionais

    SECTION .data ; data section

char1:    DB    'B'
char2:    DB    'X'

    SECTION .text

global _start

;Program entry point
_start:

        mov al,[char1] ; tem 32 bits , como a variavel tem 8bits esta dando diferente
        cmp al,[char2]
        jae C2

C1:     mov ecx,char1
        jmp show

C2:     mov ecx,char2

show:   mov edx,1  ;string lenght
        mov ebx,1   ;where to writem screen
        mov eax,4   ;write syout command to int 80hex
        int 0x80    ;interrupt 80hex, call kermel

        mov ebx, 0  ;exit code, 0=normal
        mov eax,1   ;exit command to kernel
        int 0x80    ;interrupt 80hex, call kermel
