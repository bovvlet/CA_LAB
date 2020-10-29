.data
msg: .asciiz "n = "
result: "\nsum from i = 1 to i = n for 2^i = "

.text

li $v0, 4
la $a0, msg
syscall
li $v0, 5
syscall
move $t0 ,$v0
li $t1, 2

sllv $t0, $t1, $t0
sub $t0, $t0, 2

li $v0 ,4
la $a0, result
syscall
li $v0 ,1
move $a0 ,$t0
syscall
li $v0 ,10
syscall   
