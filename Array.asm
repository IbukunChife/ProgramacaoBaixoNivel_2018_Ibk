###################################################################################################################
#				      UNIVERSIDADE FEDERALE DE RORAIMA						  #
#					Pogramação em Baixo Nível  						  #
#				Aluno : Ibukun Chife Didier Adjitche						  #
#					Professor : Kennedy Costa						  #
###################################################################################################################
.data
	a: .space 28
	c: .space 16
	str1: .asciiz " O resultado  a[1] = b - c[0]"
	str2: .asciiz " O resultado  b = a[2] + c[0]"
	str3: .asciiz " O resultado  c[0] = b + c[3]"
	str4: .asciiz " O resultado  a[4] = a[5] + a[6]"
	strX: .asciiz "Digite o valor de X"
	strY: .asciiz "Digite o valor de Y"

.text
main:

##################################################################################################################
	
	# IMPRIMINDO O STRX
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, strX		# carrega endereco de str1
	
	syscall	        	# chamada de sistema para E/S
	#RECEBENDO O VALOR DE X DO TECLADO
	li $v0, 5		# atribui 5 para $vo. Codigo para read_int
	syscall			# chamada de sistema para E/S. Retorno estara em $v0
	move $s3, $v0		# copia conteudo digitado para $s3 para preservar dado
	
	# IMPRIMINDO O STR2
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, strY		# carrega endereco de str1
	
	syscall	        	# chamada de sistema para E/S
	#RECEBENDO O VALOR DE Y DO TECLADO
	li $v0, 5		# atribui 5 para $vo. Codigo para read_int
	syscall			# chamada de sistema para E/S. Retorno estara em $v0
	move $s4, $v0		# copia conteudo digitado para $s4 para preservar dado
	
#################################################################################################################

#################################################################################################################
	li $s1,7		# registrador contendo  B = 7
	
	# valores  a colocar nas posição dos vector
	li $s2,8 		#  valor a ser setado no a[2] = 8 e c[0] = 8
	li $s5,15 		# valor a ser setado no a[5] = 15
	li $s6,18 		# valor a ser setado no a[6] = 18
	li $s7,400 		# valor a ser setado no c[3] = 400
	
	
	#Inicializando a[2]
	#Setando o index A $t0 na posição 2
	addi $t0,$zero,8 	# 4 bit * 2
	sw $s2,a($t0) 		# attribuindo o valor do registrador $s2 na posição 2 do vector a
	
	#Inicializando a[5]
	#Setando o index A $t0 na posição 5
	addi $t0,$zero,20 	# 4 bit * 5
	sw $s5,a($t0) 		# attribuindo o valor do registrador $s5 na posição 5 do vector a
	
	#Inicializando a[6]
	#Setando o index A $t0 na posição 6
	addi $t0,$zero,24 	# 4 bit * 6 
	sw $s6,a($t0) 	# attribuindo o valor do registrador $s6 na posição 2 do vector a
	
	#Inicializando c[0]
	#Setando o index B $t1 na posição 0
	addi $t1,$zero,0 	#
	sw $s2,c($t1) 		# attribuindo o valor do registrador $s2 na posição 0 do vector c
	
	#Inicializando c[3]
	#Setando o index B $t1 na posição 3
	addi $t1,$zero,12 	# 4 bit * 3
	sw $s7,c($t1) 		# attribuindo o valor do registrador $s7 na posição 3 do vector c
#####################################################################################################################

#####################################################################################################################
	beq $s3,$s4,L #(if X==Y)
#####################################################################################################################

#####################################################################################################################
	# EFFECTUANDO A OPERACAO A[1]= b - c[0]
	#Setando o index B $t1 na posição 0
	addi $t1,$zero,0 	# Colocando o index do vector c na primeira Posição
	lw $t5,c($t1) 		# colocando o valor do  vector c[0] num registrador temporal
	sub $t3,$s1,$t5 	# colocando num registrador temporal o resultado de b-c[0]
	addi $t0,$zero,4 	# setando o index na posição 1 do vector a
	sw $t3,a($t0) 		# colocando o resultados da substração na posição a[1]
	
	#IMPRIMINDO O RESULTADO A[1]= b - c[0]
	# IMPRIMINDO O STR1
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, str1		# carrega endereco de str1
	
	syscall	        	# chamada de sistema para E/S
	#IMPRIMIR O INTEIRO DA OPERACAO  vai imprimir um inteiro se
	li $v0, 1		# atribui 1 para $v0. Codigo para print_int
	move $a0, $t3		# copia nr a ser impresso para $a0. # argumento de entrada para a impressao do int
	
	syscall			# chamada de sistema para E/S

###################################################################################################################

###################################################################################################################
	
	# EFFECTUANDO A OPERACAO b= a[2] + c[0]
	#Setando o index A $t0 na posição 2
	addi $t0,$zero,8 	# Colocando o index do vector A na  Posição 2
	lw $t6,a($t0) 		# colocando o valor do  vector a[8] num registrador temporal
	add $s1,$t6,$t5 	# colocando o resultado da operação a[2] + c[0] ($t5 + $t6) no B ($s1)
	
	#IMPRIMINDO O RESULTADO b= a[2] + c[0]
	# IMPRIMINDO O STR2
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, str2		# carrega endereco de str1
	
	syscall	        	# chamada de sistema para E/S
	#IMPRIMIR O INTEIRO DA OPERACAO  vai imprimir um inteiro se
	li $v0, 1		# atribui 1 para $v0. Codigo para print_int
	move $a0, $s1		# copia nr a ser impresso para $a0. # argumento de entrada para a impressao do int
	
	syscall			# chamada de sistema para E/S
	
#################################################################################################################

#################################################################################################################

	# EFFECTUANDO A OPERACAO c[0]= b + c[3]

	#Setando o index B $t1 na posição 3
	addi $t1,$zero,12 	# Colocando o index do vector c na Posição 3
	lw $t5,c($t1) 		# colocando o valor do  vector c[3] num registrador temporal
	add $t6,$s1,$t5 	# colocando o resultado da operação b + c[3] ($s1 + $t5)
	addi $t1,$zero,0 	# Colocando o index do vector c na primeira Posição
	sw $t6,c($t1) 		# Colocando o resultado da adicao b + c[3] no c[0] 
	
	#IMPRIMINDO O RESULTADO c[0]= b + c[3]
	# IMPRIMINDO O STR1
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, str3		# carrega endereco de str1
	
	syscall	        	# chamada de sistema para E/S
	#IMPRIMIR O INTEIRO DA OPERACAO  vai imprimir um inteiro se
	li $v0, 1		# atribui 1 para $v0. Codigo para print_int
	move $a0, $t6		# copia nr a ser impresso para $a0. # argumento de entrada para a impressao do int
	
	syscall			# chamada de sistema para E/S
			
	li $v0,10
	syscall
##############################################################################################################

##############################################################################################################
		
L:  	# a[4] = a[5] + a[6]
	#Setando o index A $t0 na posição 5
	addi $t0,$zero,20 	# Colocando o index do vector A na Posição 5
	lw   $t4,a($t0) 	# Passando o valor do vetor A[5] no registrador temporal $t4
	addi $t0,$zero,24 	# Colocando o index do vector A na Posição 6
	lw   $t2,a($t0) 	# Passando o valor do vetor A[6] no registrador temporal $t2
	add  $t7,$t4,$t2 	#  colocando o resultado da adicao de a[5]+ a[6] no registrador temporal $t7 
	addi $t0,$zero,16	# Colocando o index do vector A na Posição 4
	sw   $t7,a($t0) 	# Colocando no vector a[4] o valor obtido da adicao
	
	#IMPRIMINDO O RESULTADO  a[4] = a[5] + a[6]
	# IMPRIMINDO O STR1
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, str4		# carrega endereco de str1
	syscall	        	# chamada de sistema para E/S
	#IMPRIMIR O INTEIRO DA OPERACAO  vai imprimir um inteiro se
	li $v0, 1		# atribui 1 para $v0. Codigo para print_int
	move $a0, $t7		# copia nr a ser impresso para $a0. # argumento de entrada para a impressao do int
	syscall			# chamada de sistema para E/S
	
	li $v0,10
	syscall
	    
