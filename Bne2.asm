.data


.text

main :

	li $s0,1  	# A
	li $s1,2	# B
	li $s2,3	# C

	bne $s0,$s1,else
	sub $s2,$s0,$s1		# C = A - B
	add $s0,$s1,$s2		# A = B + C
	#IMPRIMINDO  O VALOR DE C
	li $v0,1
	move $a0,$s2
	syscall
	#IMPRIMINDO  O VALOR DE A
	li $v0,1
	move $a0,$s0
	syscall
	
	j  EXIT

	else: sub $s1,$s0,$s2		# B = A - C
	      add $s2,$s1,$s2		# C = B + C
	      #IMPRIMINDO  O VALOR DE B
	      li $v0,1
	      move $a0,$s1
	      syscall
	      #IMPRIMINDO O VALOR DE C
	      li $v0,1
	      move $a0,$s2
	      syscall
	
	EXIT:
	      li $v0,10
	      syscall