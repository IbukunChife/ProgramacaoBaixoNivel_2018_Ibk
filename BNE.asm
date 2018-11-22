.text

main:

	li $s0,1
	li $s1,2
	li $s2,3
	li $s3,4

	BNE $s0 , $s1,else
	add $s2,$s3,$s5
	
	li $v0,1
	move $a0,$s2
	
	syscall
	
	j  EXIT

	else: sub $s1,$s2,$s3
	      li  $v0,1
	      move $a0,$s1
	      syscall 
	EXIT:
	      li $v0,10
	      syscall
