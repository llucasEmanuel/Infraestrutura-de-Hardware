lw x20, M # multiplicando
lw x21, m # mulitplicador
add x11, x0, x0 # produto

add x28, x0, x0 # contador
loop:
	andi x29, x21, 1 # x29 guarda 1 se lsb for 1 e 0 se lsb for 0
	beq x29, x0, desloca # lsb == 0
	add x11, x20, x11	

desloca:
	slli x20, x20, 1
	srli x21, x21, 1

checa:
	addi x30, x0, 32
	addi x28, x28, 1
	# checa o numero de iteracoes se é igual a 32
	bne x28, x30, loop


M: .word -3
m: .word -3

