; hello.asm a first program fo nasm for linux, gcc
;
;run:               hello
;output is:        Hellow Biches

    SECTION .data ; data section
msg: db "Hello Biches",10 ;the string to print, 10=cr

              ;    len is a value, not an address
   SECTION .text

   global _start

;Program entry point
   _start:
   mov edx,13      ; arg3
   mov ecx,msg     ; arg2,pointer to string
   mov ebx,1       ; arg1, where to write , screen
   mov eax,4       ; write sysout command to int 80 hex
   int 0x80

   mov ebx, 0      ; exit code, 0=normal
   mov eax,1       ; exit command to kernel
   int 0x80        ; interrupt 80hex, call kermel
