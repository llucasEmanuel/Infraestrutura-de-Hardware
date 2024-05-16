
loop1:
	add x30, x0, x0
	# le do teclado
	lb x30, 1025(x0) 
	# hifen
	addi x28, x0, 45
	beq x30, x28, loop2
	add x31, x0, x30 
	slli x31, x31, 1 
	beq x0, x0, loop1
loop2:
	
loop3:
	

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

else:

sw x11, x
#convertendo para o ASCII
addi x11, x11, 48
#printando a variavel x no monitor
sb x11, 1024(x0)
halt

a: .word 0x0
b: .word 0x0
c: .word 0x0
x: .word 0x0

