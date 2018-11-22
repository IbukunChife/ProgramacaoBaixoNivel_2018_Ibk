.text 
main :
	
	li $s0,5  # inserindo o valor 5 no registrador $s0
	li $s1,8  # inserindo o valor 5 no registrador $s1
	add $s2,$s0,$s1 # inserindo no registrador $s2  a soma de $s0 e S$s1
	la $a0 ($s2) # colocando o valor do resultado para o registrador de impressão
	li $v0,1 # chamar a função syscall para as operações aritmetica com o valor 1
	syscall
	Li $v0,10 # chamar a função syscall para mostar os resultados
	syscall
	
	li $s0,40  # inserindo o valor 5 no registrador $s0
	li $s1,13  # inserindo o valor 5 no registrador $s1
	sub $s2,$s0,$s1 # inserindo no registrador $s2  a soma de $s0 e S$s1
	la $a0 ($s2) # colocando o valor do resultado para o registrador de impressão
	li $v0,1 # chamar a função syscall para as operações aritmetica com o valor 1
	syscall
	Li $v0,10 # chamar a função syscall para mostar os resultados
	syscall
	
	li $s0,2  # inserindo o valor 5 no registrador $s0
	li $s1,86  # inserindo o valor 5 no registrador $s1
	mul $s2,$s0,$s1 # inserindo no registrador $s2  a soma de $s0 e S$s1
	la $a0 ($s2) # colocando o valor do resultado para o registrador de impressão
	li $v0,1 # chamar a função syscall para as operações aritmetica com o valor 1
	syscall
	Li $v0,10 # chamar a função syscall para mostar os resultados
	syscall