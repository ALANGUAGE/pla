nop
dec byte cl
dec word cx
VA dw 8
not cl
not cx
VB db "AB",6
inc [VA]
dec VB
org 10
L7:
ret 11
ret
