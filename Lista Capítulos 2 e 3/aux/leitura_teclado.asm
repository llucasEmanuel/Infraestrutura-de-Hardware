addi x28, x0, 0 # contador
addi x29, x0, 43 # ascii dec de '+'
addi x30, x0, 45 # ascii dec de '-'
addi x31, x0, 0x30 # ascii hex de '0'
addi x9, x0, 32 # ascii dec do ' ' 
add x18, x0, x0 # primeiro num
add x19, x0, x0 # segundo numero

# le dois numeros com qtd indefinida de digitos no formato -> (sinal1)(numero1) (sinal2)(numero2)

loop1:
	lb x5, 1025(x0)
	beq x5, x29, sinal1
	beq x5, x30, sinal1
	beq x0, x0, loop1

loop2:
	lb x5, 1025(x0)
	beq x5, x29, sinal2
	beq x5, x30, sinal2
	beq x0, x0, loop2


sinal1:
	add x20, x5, x0 # sinal em ascii hex do primeiro numero
 	beq x0, x0, first_num

sinal2:
	add x21, x5, x0 # sinal em ascii hex do segundo numero
	beq x0, x0, sec_num

first_num:
	lb x5, 1025(x0)
	beq x5, x9, unshift1
	sub x5, x5, x31  # subtrai o 0 em hex pra ficar so o valor verdadeiro
	add x18, x18, x5
	slli x18, x18, 4 # desloca o hexadecimal uma casa
	beq x0, x0, first_num
	# vai ficar procurando o espaço enquanto le

sec_num:
	lb x5, 1025(x0)
	beq x5, x0, unshift2 # procura o fim
	sub x5, x5, x31
	add x19, x19, x5
	slli x19, x19, 4 # desloca 1 casa o hex
	beq x0, x0, sec_num

unshift1:
	srli x18, x18, 4 # desfaz o ultimo shift
	beq x0, x0, loop2 # vai pro segundo numero

unshift2:
	srli x19, x19, 4
	beq x0, x0, mult

mult:
	beq x0, x0, mult
	# fazer a multiplicacao aqui



