##-------------------------------------
## PROGRAMA PRINCIPAL
## --------------------------------------


	.include "servicios.asm"


	.text
	
	#-- Evluar la expresion para a=5, b=10, c=15  evaluar(5,10,159)
	li a0, 5
	li a1, 10
	li a2, 15
	jal evaluar
	
	#-- a0 contiene el resultado
	li a7, PRINT_INT
	ecall
	
	#-- Terminar
	li a7, EXIT
	ecall

#--------------------------------------------
#-- SUBRUTINA
#
#-- ENTRADAS:
#--  a0: variable a
#--  a1: variable b
#--  a2: varibale c
#--
#-- SALIDA:
#--   a0: Resultado de evaluar la expresion a + b + c - 1
#--------------------------------------------

	.text 
	
evaluar:
	
	#-- t0 = a0 + a1
	add t0, a0, a1
	
	#-- t1 = a2 - 1
	addi t1, a2, -1
	
	#-- t2 = a0 + a1 + a2 - 1
	add t2, t0, t1
	
	#-- El resultdo lo devolvemos por a0
	mv a0, t2
	
	ret
	



