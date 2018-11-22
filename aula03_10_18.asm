.data 
	jtable: .word L0,L1,L2,L3
.text
	li $t0,15
	la $s5,Jtable
	
	slt $t2,$t4,$zero #$t3<=0
	bne $t3,$zero # <>0
	slt $t3,$t4,4 # <=4
	beq $t3,$zero,Exit # 0= 3
	
	 
	add $t1,$t1,jtable # jtable Valores
	  
	
	l0:   
		add $tx, $tx1,$tx2
		j Exit
	 