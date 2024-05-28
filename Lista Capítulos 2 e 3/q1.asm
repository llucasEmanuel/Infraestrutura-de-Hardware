# depois checar se os regs tão certos

# inicializa os regs que vão contar a pontuação de cada jogador
add x11, x0, x0
add x12, x0, x0
addi x28, x0, 32 # ' ' (espaço)

# faz um loop e le char por char até o espaço
# faz a soma dos caracteres e armazena no reg da pontuação de 1 (x11)
# le depois do espaço e faz o mesmo com o outro jogador
player1:
	lb x5, 1025(x0) # le 1 char do buffer
	beq x5, x28, player2
	# char não é espaço -> fazer soma do char
	# fazer a tabela dos char para valor

player2:
	lb x5, 1025(x0)
# escreve no output buffer
sb x5, 1024(x0)
