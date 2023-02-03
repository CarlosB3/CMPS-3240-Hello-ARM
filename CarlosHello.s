.text
.global _start


.data
.global msg
msg:
    .ascii "hello world\n"
        len = . - msg

_start:

        mov x1, #7
        add x2, x1, x1

        mov x8, #64
        mov x0, #1
        ldr x1, =msg
        ldr x2, =len
        svc #0

        mov x8, #93
        mov x0, #0
        svc #0
~                                                                                                                                                                      
~                                                                                                                                                                      
~                           
