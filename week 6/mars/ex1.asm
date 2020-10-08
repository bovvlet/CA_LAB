# Description : EX-1 !
.data
y: .asciiz " Enter the y number : "
z: .asciiz "\n Enter the z number : "
f: .asciiz "\n Enter the f number : "
q: .asciiz "\n Enter the q number : "
x: .asciiz "\n The result of program is: "
.text

li $v0 ,4
la $a0, y
syscall
li $v0 ,5
syscall
move $t1 ,$v0

li $v0 ,4
la $a0, z
syscall
li $v0 ,5
syscall
move $t2 ,$v0

li $v0 ,4
la $a0, f
syscall
li $v0 ,5
syscall
move $t3 ,$v0

li $v0 ,4
la $a0, q
syscall
li $v0 ,5
syscall
move $t4 ,$v0

mul $t2 ,$t2 ,$t2
mul $t1 ,$t1 ,$t2
div $t1, $t1 ,$t3
sub $t5, $t1 ,$t4

li $v0 ,4
la $a0, x
syscall
li $v0 ,1
move $a0 ,$t5
syscall
li $v0 ,10
syscall
