.data
    espaco: .asciiz " "
.text
.globl main
main:
    #s0 = v1, f1 = v2
    #input inteiro
    la $v0, 5
    syscall
    move $s0, $v0

    #input float
    la $v0, 6
    syscall

    #print int
    la $v0, 1
    move $a0, $s0
    syscall

    #imprimindo o espaço
    li $v0, 4
    la $a0, espaco
    syscall

    #print float
    la $v0, 2
    mov.s $f12, $f0
    syscall