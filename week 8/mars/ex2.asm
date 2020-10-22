.data 

array_a: .word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19
output_a: .asciiz "Sum a = "

.text 
.globl main

main:

# WARNING DON FORGET to write size of our array
li $t5, 20

la	$t0, array_a
li	$t2, 0            # int i
li	$t3, 0            # int sum

jal rec

return:

# print string "sum"
la	$a0, output_a
li	$v0, 4
syscall

#print sum of "a"
addu	$a0, $0, $t3
li	$v0, 1
syscall
#finish the program
li $v0, 10
syscall

rec:
sltu $t7, $t2, $t5
beq   $t7, $0,  return
lw    $t4, ($t0)
# sum = sum + a[i]
addu $t3, $t3, $t4
addiu $t0, $t0, 4
addiu $t2, $t2, 1
# rec(i + 1)
j rec 
