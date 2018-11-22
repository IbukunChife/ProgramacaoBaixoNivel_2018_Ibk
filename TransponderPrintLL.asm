.data
	str1: .asciiz " Digite a Latitude em Graus Decimais "  		# $f1
	str2: .asciiz " Digite a Longitude em Graus Decimais " 		# $f2
	strX: .asciiz " Digite a Latitude em Graus , Minuto, Segundo "
	str3: .asciiz " Digite Latitude - Graus "			# $s0
	str4: .asciiz " Digite Latitude Minuto "			# $s1
	str5: .asciiz " Digite Latitude Segundo "			# $f3
	strY: .asciiz " Digite a Longitude em Graus , Minuto, Segundo "
	str6: .asciiz " Digite Longitude Graus "			# $s2
	str7: .asciiz " Digite Longitude Minuto "			# $s3
	str8: .asciiz " Digite Longitude Segundo "			# $f4
	
	str11: .asciiz " Digite a Latitude em Graus Decimais do Air Plane Oposto "  		# $f5
	str22: .asciiz " Digite a Longitude em Graus Decimais do Air Plane Oposto " 		# $f6
	strXX: .asciiz " Digite a Latitude em Graus , Minuto, Segundo do Air Plane Oposto "
	str33: .asciiz " Digite Latitude - Graus "						# $s4
	str44: .asciiz " Digite Latitude Minuto "						# $s5
	str55: .asciiz " Digite Latitude Segundo "						# $f7
	strYY: .asciiz " Digite a Longitude em Graus , Minuto, Segundo do Air Plane Oposto "
	str66: .asciiz " Digite Longitude Graus "						# $s6
	str77: .asciiz " Digite Longitude Minuto "						# $s7
	str88: .asciiz " Digite Longitude Segundo "						# $f8
.text
main:
##################################################################################################################
##################################################################################################################
#
#						AIR PLANE ACTUAL			
#
##################################################################################################################
##################################################################################################################
	# IMPRIMINDO O STR1 	" Digite a Latitude em Graus Decimais "
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, str1		# carrega endereco de str1
	
	syscall	        	# chamada de sistema para E/S
	#RECEBENDO O VALOR LATITUDE EM GRAUS DECIMAIS NO TECLADO
	li $v0, 7		# atribui 7 para $vo. Codigo para read_Double
	syscall			# chamada de sistema para E/S. Retorno estara em $v0
	mov.s $f1,$f0		# copia conteudo digitado para $f0 para preservar dado
##################################################################################################################	
	# IMPRIMINDO O STR2	" Digite a Longitude em Graus Decimais "
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, str2		# carrega endereco de str2
	
	syscall	        	# chamada de sistema para E/S
	#RECEBENDO O VALOR DA LONGITUDE EM GRAUS DECIMAIS NO TECLADO
	li $v0, 7		# atribui 7 para $vo. Codigo para read_Double
	syscall			# chamada de sistema para E/S. Retorno estara em $v0
	mov.s $f2,$f0		# copia conteudo digitado para $f1 para preservar dado
###################################################################################################################


###################################################################################################################
	# IMPRIMINDO O STRX 	" Digite a Latitude em Graus , Minuto, Segundo"
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, strX		# carrega endereco de strX
	
	syscall	        	# chamada de sistema para E/S
###################################################################################################################

		
###################################################################################################################
	# IMPRIMINDO O STR3 " Digite Latitude - Graus"
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, str3		# carrega endereco de str3
	
	syscall	        	# chamada de sistema para E/S
	#RECEBENDO O VALOR DA LATITUDE EM GRAUS DO TECLADO
	li $v0, 5		# atribui 5 para $vo. Codigo para read_int
	syscall			# chamada de sistema para E/S. Retorno estara em $v0
	move $s0, $v0		# copia conteudo digitado para $s0 para preservar dado
########################################################################################################
	# IMPRIMINDO O STR4 " Digite Latitude - Minuto"
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, str4		# carrega endereco de str4
	
	syscall	        	# chamada de sistema para E/S
	#RECEBENDO O VALOR DA LATITUDE EM MINUTO DO TECLADO
	li $v0, 5		# atribui 5 para $vo. Codigo para read_int
	syscall			# chamada de sistema para E/S. Retorno estara em $v0
	move $s1, $v0		# copia conteudo digitado para $s0 para preservar dado
########################################################################################################
	# IMPRIMINDO O STR5	" Digite Latitude - Segundo"
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, str5		# carrega endereco de str5
	
	syscall	        	# chamada de sistema para E/S
	#RECEBENDO O VALOR DA LATITUDE SEGUNDO DO TECLADO
	li $v0, 7		# atribui 7 para $vo. Codigo para read_Double
	syscall			# chamada de sistema para E/S. Retorno estara em $v0
	mov.s  $f3,$f0		# copia conteudo digitado para $f0 para preservar dado
###################################################################################################################


###################################################################################################################
	# IMPRIMINDO O STRY 	" Digite a Longitude em Graus , Minuto, Segundo"
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, strY		# carrega endereco de strY
	
	syscall	        	# chamada de sistema para E/S
###################################################################################################################	


###################################################################################################################
	# IMPRIMINDO O STR6 " Digite a Longitude em Graus"
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, str6		# carrega endereco de str6
	
	syscall	        	# chamada de sistema para E/S
	# RECEBENDO O VALOR DA LONGITUDE EM GRAUS DO TECLADO
	li $v0, 5		# atribui 5 para $vo. Codigo para read_int
	syscall			# chamada de sistema para E/S. Retorno estara em $v0
	move $s2, $v0		# copia conteudo digitado para $s0 para preservar dado
##################################################################################################################	
	# IMPRIMINDO O STR7 " Digite a Longitude em Minuto "
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, str7		# carrega endereco de str7
	
	syscall	        	# chamada de sistema para E/S
	#RECEBENDO O VALOR DA LONGITUDE EM MINUTO DO TECLADO
	li $v0, 5		# atribui 5 para $vo. Codigo para read_int
	syscall			# chamada de sistema para E/S. Retorno estara em $v0
	move $s3, $v0		# copia conteudo digitado para $s0 para preservar dado
##################################################################################################################	
	# IMPRIMINDO O STR8	" Digite a Longitude em Segundo "
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, str8		# carrega endereco de str8
	
	syscall	        	# chamada de sistema para E/S
	#RECEBENDO O VALOR DA LONGITUDE EM SEGUNDO DO TECLADO
	li $v0, 7		# atribui 7 para $vo. Codigo para read_Double
	syscall			# chamada de sistema para E/S. Retorno estara em $v0
	mov.s  $f4,$f0		# copia conteudo digitado para $f0 para preservar dado

##################################################################################################################
##################################################################################################################
#
#						AIR PLANE OPOSTO
#
##################################################################################################################
##################################################################################################################
	# IMPRIMINDO O STR11 	" Digite a Latitude em Graus Decimais do Air Plane Oposto "
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, str11		# carrega endereco de str11
	
	syscall	        	# chamada de sistema para E/S
	#RECEBENDO O VALOR LATITUDE EM GRAUS DECIMAIS NO TECLADO
	li $v0, 7		# atribui 7 para $vo. Codigo para read_Double
	syscall			# chamada de sistema para E/S. Retorno estara em $v0
	mov.s $f5,$f0		# copia conteudo digitado para $f5 para preservar dado
##################################################################################################################	
	# IMPRIMINDO O STR22	" Digite a Longitude em Graus Decimais do Air Plane Oposto "
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, str22		# carrega endereco de str22
	
	syscall	        	# chamada de sistema para E/S
	#RECEBENDO O VALOR DA LONGITUDE EM GRAUS DECIMAIS NO TECLADO
	li $v0, 7		# atribui 7 para $vo. Codigo para read_Double
	syscall			# chamada de sistema para E/S. Retorno estara em $v0
	mov.s $f6,$f0		# copia conteudo digitado para $f6 para preservar dado
###################################################################################################################


###################################################################################################################
	# IMPRIMINDO O STRXX 	" Digite a Latitude em Graus , Minuto, Segundo do Air Plane Oposto "
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, strXX		# carrega endereco de strXX
	
	syscall	        	# chamada de sistema para E/S
###################################################################################################################

		
###################################################################################################################
	# IMPRIMINDO O STR33 " Digite Latitude - Graus"
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, str33		# carrega endereco de str33
	
	syscall	        	# chamada de sistema para E/S
	#RECEBENDO O VALOR DA LATITUDE EM GRAUS DO TECLADO
	li $v0, 5		# atribui 5 para $vo. Codigo para read_int
	syscall			# chamada de sistema para E/S. Retorno estara em $v0
	move $s4, $v0		# copia conteudo digitado para $s4 para preservar dado
########################################################################################################
	# IMPRIMINDO O STR44 " Digite Latitude - Minuto"
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, str44		# carrega endereco de str44
	
	syscall	        	# chamada de sistema para E/S
	#RECEBENDO O VALOR DA LATITUDE EM MINUTO DO TECLADO
	li $v0, 5		# atribui 5 para $vo. Codigo para read_int
	syscall			# chamada de sistema para E/S. Retorno estara em $v0
	move $s5, $v0		# copia conteudo digitado para $s5 para preservar dado
########################################################################################################
	# IMPRIMINDO O STR55	" Digite Latitude - Segundo"
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, str55		# carrega endereco de str5
	
	syscall	        	# chamada de sistema para E/S
	#RECEBENDO O VALOR DA LATITUDE SEGUNDO DO TECLADO
	li $v0, 7		# atribui 7 para $vo. Codigo para read_Double
	syscall			# chamada de sistema para E/S. Retorno estara em $f0
	mov.s  $f7,$f0		# copia conteudo digitado para $f7 para preservar dado
###################################################################################################################


###################################################################################################################
	# IMPRIMINDO O STRYY 	" Digite a Longitude em Graus , Minuto, Segundo"
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, strYY		# carrega endereco de strY
	
	syscall	        	# chamada de sistema para E/S
###################################################################################################################	


###################################################################################################################
	# IMPRIMINDO O STR66 " Digite a Longitude em Graus"
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, str66		# carrega endereco de str66
	
	syscall	        	# chamada de sistema para E/S
	# RECEBENDO O VALOR DA LONGITUDE EM GRAUS DO TECLADO
	li $v0, 5		# atribui 5 para $vo. Codigo para read_int
	syscall			# chamada de sistema para E/S. Retorno estara em $v0
	move $s6, $v0		# copia conteudo digitado para $s6 para preservar dado
##################################################################################################################	
	# IMPRIMINDO O STR77 " Digite a Longitude em Minuto "
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, str77		# carrega endereco de str77
	
	syscall	        	# chamada de sistema para E/S
	#RECEBENDO O VALOR DA LONGITUDE EM MINUTO DO TECLADO
	li $v0, 5		# atribui 5 para $vo. Codigo para read_int
	syscall			# chamada de sistema para E/S. Retorno estara em $v0
	move $s7, $v0		# copia conteudo digitado para $s7 para preservar dado
##################################################################################################################	
	# IMPRIMINDO O STR88	" Digite a Longitude em Segundo "
	li $v0, 4		# atribui 4 para $v0. Codigo para print_str
	la $a0, str88		# carrega endereco de str88
	
	syscall	        	# chamada de sistema para E/S
	#RECEBENDO O VALOR DA LONGITUDE EM SEGUNDO DO TECLADO
	li $v0, 7		# atribui 7 para $vo. Codigo para read_Double
	syscall			# chamada de sistema para E/S. Retorno estara em $f0
	mov.s  $f8,$f0		# copia conteudo digitado para $f8 para preservar dado
