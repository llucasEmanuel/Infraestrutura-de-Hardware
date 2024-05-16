# carrega as variaveis da memoria para os registradores
lw x18, a
lw x19, b
lw x20, c
lw x11, x

# x = 0 
add x11, x0, x0

# a >= 5
addi x5, x0, 5
bge x18, x5, if1
beq x0, x0, else

# b < 66 (b <= 65)
if1:
	addi x5, x0, 66
	blt x19, x5, if2
	beq x0, x0, else

# c >= 16 (c > 15)
if2:
	addi x5, x0, 16
	bge x20, x5, if3
	beq x0, x0, else

# x = 1
if3:
	addi x11, x0, 1

# atualiza o valor de x na memória e halt
else:
	sw x11, x
	halt

a: .word 5
b: .word 65
c: .word 16
x: .word 0xf

