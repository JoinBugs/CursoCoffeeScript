heroes = 0
while heroes <= 12
	heroes++

###
	para llevar una sentencia de control de flujo ya sea
	una bifuracion o una iterativa se utiliza la palabra reservada
	then
###

heroes = 0
while heroes <= 12 then heroes++

###
	con mayor semantica
	La keyword until truncara el codigo es decir
	dejara de visitar lo que existe en el fragmento 
	de la keyword then cuando la sentencia logica a
	su derecha se cumpla.
###
heroes = 0
until heroes is 12 then heroes++
until heroes == 12 then heroes++
until heroes > 12 then heroes++

###
	----- arrays -----
	by, when
###

nums = [ 1, 2, 3, 4, 5 ]
for num in nums
	console.log num

#tipos de incremento con by
for num in nums by 2
	console.log num

#condicionales para filtros en for
console.log num for num in nums when num % 2 is 0

#arrays por comprension
###
	si no se utilizan los parentesis
	se asigna el ultimo valor calculado
	y no el arreglo en si
###
nums = ( num * 5 for num in nums )

#bucle infinito con loop
heroes = 0
loop
	break unless heroes++ is 12
console.log heroes