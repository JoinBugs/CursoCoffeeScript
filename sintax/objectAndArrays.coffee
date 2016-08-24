###
	La unica diferencia aqui con js en la delcaracion de 
	objetos es el poder omitir los curly braces '{}'
	puesto que tambien se pudieron haber agregado sin errores
	en tiempo de compilacion en coffee, y tambien el
	omitir los ','. cualquier sentencia que requiera de una ,
	se puede omitir si se remplaza por un salto de linea
###
podcast = 
	number : 11
	title : 'title'
	description : 'description'
	toString : -> "#{@number}, #{@title}"


'number' in podcast
'number' of podcast #sinonimo de in

###
	Para EL tratamienton de arrays solo se pueden omitir las comas
	en la declaracion de cada elemento para la inicializacion del array.
	Es necesario el uso de [] para la delcaracion del array.
###

###
	nueva sintaxis : elipsis( '...' )
	usado para pasar cada elemento de un array como parametro
	de una funcion que recibe un numero de parametros variable.En
	este caso la funcion max de Math convierte
###
Math.max [ 1, 43, 7, 32, 11, 5 ]...

###
	Rangos: Se Pueden crear rangos apartir de los operadores
	Para la creacion de listas.
	'..' y '...'
###

untilFive = [ 1..5 ]  # output -> [ 1, 2, 3, 4, 5 ]
untilFor  = [ 1...5 ] # output -> [ 1, 2, 3, 4 ]

###
	Mejora en el for-each, pudiendo declara una segunda
	variable que recivira el indice del elemento en la coleccion
###

names = [ 'Andres', 'Juan', 'Pablo', 'Tomas' ]
name for name, index in names when index % 2 is 0