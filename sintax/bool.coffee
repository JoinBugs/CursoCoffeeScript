###
	Los Operadores Logicos || y &&
	Se Traducen a or y and
###

name 		= 'Andres'
lastName	= 'Cornejo'

isValid = true if name is 'Andres' and ( lastName is 'Cornejo' or lastName is 'Cruz' )
console.log isValid

###
	EL Operador Logico or tambien se puede
	utilizar para la asginacion de valores por defecto a variables 
	como en js
###

nameOrigin = name or 'Alberto'

### 
	Para Comprobacion si previamente existe la variable, es decir 
 	probocar un error en timempo de ejecucion si la variable no ha sido declarada,
 	se utiliza el operador existencial ?.
 	El error sera probocado en la maquina de js no en la de coffee.
###
nameOrigin = name ? 'Alberto'

###
	El Operador Existencial Se Traduce literalmente a codigo
	como un comprobador si una variable existe incluso si esta forma
	parte como una propiedad de un objeto o si lo que se esta llamando es
	una funcion.
###
###
	Primero se pregunta si el objeto goku
	tinene la propiedad movements si esto es cierto
	el compilador seguira adelante con el demas codigo
	lo siguiente en caso de cumplirse la condicion anterior
	sera preguntar si esta propiedad es una funcion, posteriormente
	la ejecutara si esto es cierto.
###
goku.movements?.kamehame()?
