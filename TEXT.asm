
# Definindo a Jump Table
.data
jTable: .word L0,L1,L2,L3     

.text

# Definindo as vari�veis
li  $s1, 15                               # g = $s1 = 15
li  $s2, 20                               # h = $s2 = 20
li  $s3, 10                               # i = $s3 = 10
li  $s4, 5                                # j = $s4 = 5
li  $s5, -1                               # k = $s5 = 2
la  $t4, jTable                           # $t4 = base address of the jump table

# Verificando os limites de K
slt  $t3, $s5, $zero     # $t3 = ($s5 <= 0)            
bne  $t3, $zero, EXIT    # desvia para EXIT se $t3 < > 0        
slti $t3, $s5, 4          # $t3 = ($s5 <= 4)   
beq  $t3, $zero, EXIT       # desvia para EXIT se $t3 = 0

# Calculando o endere�o correto do Label
sll $t1, $s5, 2          # calcula o endere�amento de 4 bytes               
add $t1, $t1, $t4         # $t1 ser� o endere�o de jTable           
lw  $t0, 0($t1)           # $t0 � onde est� o label desejado

# Sele��o do Label    
jr $t0               # desvia com base no conte�do de $t0           

# Casos          
L0:      add $s0, $s3, $s4    # Se K = 0 ent�o f = i + j # fim deste case, desvia para EXIT   
j EXIT                                   
L1:      add $s0, $s1, $s2        # Se K = 1 ent�o f = g + h # fim deste case, desvia para EXIT
j EXIT                                   
L2:      sub $s0, $s1, $s2       # Se K = 2 ent�o f = g - h # fim deste case, desvia para EXIT
j EXIT                                   
L3:      sub $s0, $s3, $s4       # Se K = 3 ent�o f = i � j  # sai do Switch definitivamente
EXIT:
#FIM