.data
	a: .space 40
	b: .space 980
	c: .space 8
	esp: .asciiz "\n"
.text
	li $s0,20
	li $s1,78
	li $s2,8
	li $s3,65
	li $s4,58
#############################################################	
	addi $t1,$zero,0 	
	sw $s0,b($t1)
	sw $s1,c($t1)
	
	lw $t4,b($t1)
	lw $t5,c($t1)
	sub $t4,$t4,$t5
	
	addi $t1,$zero,40
	sw $t4,a($t1)
	
	li $v0, 1		
	move $a0, $t4	
	syscall	
	
	li $v0,4
	la $a0,esp
	syscall
#############################################################
	addi $t1,$zero,0 	
	sw $s2,a($t1)
	sw $s4,c($t1)
	
	lw $t4,a($t1)
	lw $t5,c($t1)
	add $t4,$t4,$t5
	
	addi $t1,$zero,980
	sw $t4,a($t1)
	
	li $v0, 1		
	move $a0, $t4	
	syscall	
	
	li $v0,4
	la $a0,esp
	syscall
#############################################################
	addi $t1,$zero,0 	
	sw $s1,b($t1)
	sw $s3,a($t1)
	
	lw $t4,b($t1)
	lw $t5,a($t1)
	sub $t4,$t4,$t5
	
	addi $t1,$zero,0
	sw $t4,c($t1)
	
	li $v0, 1		
	move $a0, $t4	
	syscall	
	
	li $v0,4
	la $a0,esp
	syscall
#############################################################