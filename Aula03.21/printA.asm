SECTION .data        ;data section

char:   db 'A'    ; the string to print
;char:   db 0x41  ; the string to print
;char:   db 41h   ; the string to print
;char:   db 65    ; the string to print


SECTION .text     ; code section

global _start

;Program entry point

_start:

mov edx,1         ; "size of the string"
mov ebx,1         ; arg1, "where to write", screen
mov ecx,char      ; arg2 pointer to string "type"
mov eax,4         ; write syout command to int 80 hex "what we want to do"
int 0x80          ; interrupt 80 hex, call kernel "return"

mov ebx,0         ; exit code, 0 = normal
mov eax,1         ; exit command to kernel
int 0x80          ; interrupt 80hex, call kernel
