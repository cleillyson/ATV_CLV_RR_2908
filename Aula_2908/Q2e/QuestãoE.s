.data
    valor: .double 0.3333333
    zero: .double 0.0
.text
.globl main
main:
    #f0/f1 = soma2, s0 = i
    li $s1, 30
    li $s0, 0
    ldc1 $f0, zero
    
    ldc1 $f2, valor

    while:
        bgt $s0, $s1, fim
        add.d $f0, $f2, $f0
        addi $s0, $s0, 1 
        j while
    fim:
        li $v0, 3       # Syscall para impressão de número de ponto flutuante
        mov.d $f12, $f0
        syscall