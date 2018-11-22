.data 
	espace: .asciiz "\n"
.text
	li $s0,47
	li $t0,8
	mul $s0,$s0,$t0
	li $v0,1
	move $a0, $s0
	syscall
	
	li $v0,4
	la $a0, espace
	syscall
	
	li $s1,55
	li $t1,20
	add $s1,$s1,$t1
	li  $v0,1
	move $a0, $s1
	syscall
	
	li $v0,4
	la $a0,espace
	syscall
	
	li $s2,70
	li $t2,4
	sub  $s2,$s2,$t2
	li $v0,1
	move $a0, $s2
	syscall
	
	li $v0,4
	la $a0,espace
	syscall
	
	li $s3,24
	li $t3,7
	div $s3,$s3,$t3
	li $v0,1
	move $a0, $s3
	syscall
	