;Exemplo condicionais

    SECTION .data ; data section

var1:   db      100
var2:   db      130
msg1m:   db      'Var1 maior Var2',10
msg2m:   db      'Var2 maior Var1',10
msgig:  db      'Valores iguais',10

    SECTION .text

global _start

;Program entry point
_start:

        mov al,[var1]
        cmp al,[var2]
        je iguais
        cmp al,[var2]
        jg v1m2

v2m2:   mov ecx,msg2m
        jmp show

v1m2:   mov ecx,msg1m
        jmp show

iguais: mov ecx,msgig

show:   mov edx,16  ;string lenght
        mov ebx,1   ;where to writem screen
        mov eax,4   ;write syout command to int 80hex
        int 0x80    ;interrupt 80hex, call kermel

        mov ebx, 0  ;exit code, 0=normal
        mov eax,1   ;exit command to kernel
        int 0x80    ;interrupt 80hex, call kermel
