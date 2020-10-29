.data
x:	.asciiz "x = "
y:	.asciiz "y = "
result:	.asciiz "result = "
fl1: .float 5.4
fl2: .float 12.3
fl3: .float 18.23
fl4: .float 8.23
.text
li	$v0, 4
la	$a0, x
syscall
li $v0, 6
syscall
mov.s $f1, $f0

li	$v0, 4
la 	$a0, y
syscall
li $v0, 6
syscall  
mov.s $f2, $f0

l.s $f3, fl1
l.s $f4, fl2
l.s $f5, fl3
l.s $f6, fl4

# f3 = 5.4xy
mul.s $f3 , $f3, $f1
mul.s $f3 , $f3, $f2


# f4 = 12.3y
mul.s $f4 , $f4, $f2

  
# f5 = 18.23x
mul.s $f5 , $f5, $f1 

sub.s $f3, $f3, $f4
add.s $f3, $f3, $f5
sub.s $f3, $f3, $f6

li	$v0, 4
la	$a0, result
syscall
li $v0, 2
mov.s $f12 , $f3
syscall # requires arg to be stored in $f12
