###
	Todas Las funciones se declaran como anonimas y son 
	lambdas para su reutilizacion se usan variables como
	apuntadores de estas.Las si la funcion lambda requiere
	parametros estos se especifican dentro de parentesis,
	no requieren de una instruccion return pues el compilador
	siempre toma la ultima linea como valor de devolucion de 
	la funcion lambda, a menos que se requiera devolver un valor
	antes de su flujo normal. la sintaxis para la funcion lambda
	es ( [param1, param2, param...] -> {body_lambda} ).
###

###
	Para El llamado de una funcion no es necesario utilizar parentesis
	a menos que la funcion no requiera parametros, pero para esto coffee
	incorpora una keyword llamada 'do' que permite que no incluyas los
	parentesis cunando llamas a una funcion que no requiere argumentos
	ejemplo : gretting = -> 'Hi'
			  gretting() ------ Modo Poco Expresivo
			  do gretting ----- sin parentesis
###
gretting = -> "Hello"
gretting()

grettingName = ( name ) -> "Hello #{name}"
grettingName( 'Andres' )

grettingCustomer = ( gretter, name ) -> "#{gretter} #{name}"
grettingCustomer( 'Hi', 'Andres' )

###
	Valores Por defecto en los argumentos de las funciones lambda,
	gracias a la facil definciion de los valores por defecto que los
	argumentos de una funcion pueda tener, se logra una sintaxis mas clara
	y robusta.
###
divide = ( a, b = 1 ) -> a / b

###
	Recordando A Arguments.
	coffee tinene tambien a arguments pero la converte implicitamente
	a un objeto de tipo array por nosotros facilitandonos el trabajo, en 
	caso de quere utilizar las propiedades de Array
###

divide = -> ( nums... )
	result = -1
	nums.forEach ( num ) -> result /= num #no es necesario los pararentesis para el paso de parametros
	result # sin return explicito, esto es coffee!!



runers = ->( winner, runners... ) console.log winner, runners.join( ', ')