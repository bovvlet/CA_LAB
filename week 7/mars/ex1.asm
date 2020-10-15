# Description : EX-1 !
.data
x: .asciiz " Enter the x number : "
ans: .asciiz "\n The result of program is: "
.text

la $t4 , 1

li $v0 ,4
la $a0, x
syscall
li $v0 ,5
syscall
move $t1 ,$v0
# t1 < 0
slti $t2 , $t1 , 0 # t2 = 1
seq  $t3 , $t1 , 0 #
mul  $t2 , $t2 , 2 # t2 = 2
sub  $t2 , $t2 , 1 # t2 = 1
sub  $t3 , $t4 , $t3
mul $t3 , $t3 , $t2
mul $t3 , $t3 , -1

li $v0 ,4
la $a0, ans
syscall
li $v0 ,1
move $a0 ,$t3
syscall
li $v0 ,10
Syscall
