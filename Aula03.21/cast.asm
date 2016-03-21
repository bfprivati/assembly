
; MOVES AMBIGUOS
SECTION .data        ;data section

valor:       DB  15 ;

SECTION .text         ; code section

global _start

;Program entry point

_start:


;mov [valor],20      ; error : operation size not specified
;mov [valor],BYTE 20 ; OK
;mov BYTE [valor],20 ; ok
mov ebx,[valor]



mov eax,1       ; exit command to kernel
int 0x80        ; interrupt 80hex, call kernel
