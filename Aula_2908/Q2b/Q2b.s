.text
.globl main
main:
    #s0 = i, s1 = j
    li $s1, 12

    la $v0, 5
    syscall

    move $s0, $v0

    bgt $s0, $s1, else
    
    sll $s1, $s0, 1
    addi $s1, $s1, 8
    move $a0, $s1
    j print
    else:
        sll $t0, $s0, 3
        mul $t1, $s1, 6
        add $t0, $t0, $t1
        addi $t0, $t0, 12
        move $a0, $t0
    print:
        la $v0, 1
        syscall
