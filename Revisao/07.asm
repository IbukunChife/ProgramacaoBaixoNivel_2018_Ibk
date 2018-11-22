.data

.text

	li $s0,3 	# a
	li $s1,4	# b
	li $s3,10	# m 
	
	add $s3,$zero,$s0 	# m = a ;
	slt $t1,$s1,$s3     	# if (b < m )
	beq $t1,$zero,exit
	add $s3,$zero,$s1
	
	li $v0,1
	move $a0,$s3
	syscall
	
exit:
	li $v0,10
	syscall