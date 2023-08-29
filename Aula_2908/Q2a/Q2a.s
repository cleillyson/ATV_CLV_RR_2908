.text
.globl main

main: # $s0 = a; $s1 = b; $s2 = t
#a = 12; b = 5 t =(a+a)-(a+b)
        
        li $s0, 12 #Vai carregar o valor imediato 12 no registrador s0
        li $s1, 5  ##Vai carregar o valor imediato 5 no registrador s1

        add $t0, $s0, $s0 # to recebe a + a
        add $t1, $s0, $s1 # to recebe a + b

        sub $s2, $t0,$t1 # t =(a+a)-(a+b)

        la $v0, 1 # para printar um inteiro
        move $a0, $s2 # move o valor para o registrador a0 para poder printar/ referencia do valor
        syscall
