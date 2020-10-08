# Description : EX-2 !
.data
res: .asciiz "\n The result of program is: "
.text

li $t1, 0 # x = 0
li $t2, 1 # y = 1

add $t3, $t1, $t2 # computing Fi(3) # res = x + y 

move $t1, $t2 # x = y
move $t2, $t3 # y = x
add $t3, $t1, $t2 # computing Fi(4) # res = x + y

move $t1, $t2
move $t2, $t3
add $t3, $t1, $t2 # computing Fi(5)

move $t1, $t2
move $t2, $t3
add $t3, $t1, $t2 # computing Fi(6)

move $t1, $t2
move $t2, $t3
add $t3, $t1, $t2 # computing Fi(7)

move $t1, $t2
move $t2, $t3
add $t3, $t1, $t2 # computing Fi(8)

move $t1, $t2
move $t2, $t3
add $t3, $t1, $t2 # computing Fi(9)

move $t1, $t2
move $t2, $t3
add $t3, $t1, $t2 # computing Fi(10)

li $v0 ,4
la $a0, res
syscall
li $v0 ,1
move $a0 ,$t3
syscall
li $v0 ,10
syscall
