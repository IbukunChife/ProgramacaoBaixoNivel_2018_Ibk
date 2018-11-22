.data 
	sp: .asciiz "\n \n"
.text
	li $s0,32	# i
	li $s1,7	# j
	li $s2,0	# f
	li $s3,15	# g
	li $s4,32	# h
	
	bne $s0,$s1,else
	add $s2,$s3,$s4
	
	li $v0,1
	move $a0,$s2
	syscall
	
	li $v0,4
	la $a0,sp
	syscall
	
	li $v0,10
	syscall
else:
	sub $s2,$s3,$s4
	
	li $v0,1
	move $a0,$s2
	syscall
	
	li $v0,4
	la $a0,sp
	syscall
	
	li $v0,10
	syscall