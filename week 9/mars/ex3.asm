.data
    endline:     .asciiz "\n"
    zer:    .float    0.0
    one:    .float    1.0
    string:    .asciiz "enter the number "
    string1:.asciiz " : "
    result: .asciiz "minimum number is: "
.text
    l.s    $f4, one
    l.s    $f9, zer
    li    $t1, 1
    addi    $t5, $zero, 8
    
    li    $v0, 4
    la    $a0, string
    syscall
    li    $v0, 1
    move     $a0, $t1
    syscall
    li    $v0, 4
    la    $a0, string1
    syscall
    
    li    $v0, 6
    syscall
    mov.s    $f2, $f0  # answer
loop:
    bge    $t1, $t5, exit
    addi    $t1, $t1, 1
    
    li    $v0, 4
    la    $a0, string
    syscall
    li    $v0, 1
    move     $a0, $t1
    syscall
    li    $v0, 4
    la    $a0, string1
    syscall
    
    li    $v0, 6
    syscall
    
    mov.s    $f3, $f0
    
    l.s  $f7, one
    c.lt.s $f2 $f3
    movf.s  $f7, $f9
    
    sub.s    $f8, $f4, $f7
    
    mul.s    $f2, $f2, $f7
    mul.s    $f3, $f3, $f8
    add.s    $f2, $f2, $f3

    j loop
    
exit:
    li    $v0, 4
    la    $a0, result
    syscall
    li    $v0, 2
    mov.s    $f12, $f2
    syscall
