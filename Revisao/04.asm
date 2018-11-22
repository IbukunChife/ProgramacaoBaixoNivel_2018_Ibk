.data
	sp: .asciiz "\n \n"
.text
	li $s0,1	# x
	li $s1,2	# y
	li $s2,0	# a
	li $s3,5	# b
	li $s4,9 	# c
	
	beq $s0,$s1 ,L2
	add $s2,$s3,$s4
	
	li $v0,1
	move $a0,$s2
	syscall	
	
	li $v0,4
	la $a0,sp
	
	li $v0,10
	syscall
	
L2: 
	sub $s2,$s3,$s4
	
	li $v0,1
	move $a0,$s2
	syscall	
	
	li $v0,4
	la $a0,sp
	
	li $v0,10
	syscall
