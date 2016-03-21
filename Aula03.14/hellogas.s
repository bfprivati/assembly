#assemble as -o hello.o hello.s
#link ld -o hello hello.o
#
#GAS
#---------------------------------------------------------------------
    .data
message:
        .ascii "Hello, Word\n"
        .global _start

        .text

_start:
        # write(1, message, 13)
        mov     $4, %eax                      # system call 4 is write
        mov     $1, %ebx                      # file handle 1 is sdout
        mov     $message, %ecx                # address of string to output
        mov     $13, %edx                     #
        int     $0x80                         # invoke operating system code

        # exit (0)
        mov     $1, %eax                      # system call 1 is exit
        xor     %ebx, %ebx                   # we want return code 0
        int     $0x80                         # invoke oiperating system code
