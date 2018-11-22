################  INSTRUÇÃO WHILE NO MIPS ###############################

.text

main:
	li $s6,1	#
	li $s3,0	#zerando o valor do contador 
	li $t5,		#inserindo o valor de K

loop:
	sll $t1,$s3,2 		# $t1 = 4 * I  DESLOCAMENTO PARA DIREITA
	add $t1,$t1,$s6		# I = I + 1
	lw  $t1,0($t2)		#ARMAZENAR o [I] eEM UM REGISTRADOR
	bne $t0,$t5, Exit 	# se != K, vai Direito para Exit
	add $s3,$s3,1 		#$s3,$s3, +1
	j loop
Exit: