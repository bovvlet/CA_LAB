.data
in : .asciiz "The quick brown fox jumps yes\n"
ans: .asciiz "Word count = "
.text

la $t1 , in
li $t3 , 1

li $v0 , 4
la $a0, in
syscall

loop:
    lb $t2 , 0($t1)
    beqz $t2 , done
    addi $t1 , $t1 , 1
    seq $t5 , $t2 , 32
    add $t3 , $t3 , $t5
    b loop
done:

li $v0 ,4
la $a0, ans
syscall

li $v0 ,1
move $a0 ,$t3
syscall

li $v0 ,10
syscall
