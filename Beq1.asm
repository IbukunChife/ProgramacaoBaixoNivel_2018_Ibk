.data


.text

main :

	li $s0,1  	# A
	li $s1,2	# B
	li $s2,3	# C

	beq $s0,$s1,else
	add $s2,$s0,$s1
	sub $s0,$s1,$s2
	
	li $v0,1
	move $a0,$s2
	syscall
	
	li $v0,1
	move $a0,$s0
	syscall
	
	j  EXIT

	else: add $s1,$s0,$s2
	      sub $s1,$s1,$s2
	      
	      li $v0,1
	      move $a0,$s2
	      syscall
	
	      li $v0,1
	      move $a0,$s0
	      syscall
	
	EXIT:
	      li $v0,10
	      syscall