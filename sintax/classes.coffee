###
	para la creacion de una clase, se indica con la keyword
	'class' segido del nombre de esta, para declarar metodos de
	instancia se hace dando el identificador del metodo seguido
	de ':' y la funcion lambda, para indicar el sontructor se hace
	obligatoriamente declarando un metodo de instancia llamado
	constructor.

	Para La Creacion de Metodos estaticos se usa la siguiente sintaxis:
	'@identifier_method : -> | => '

	para evitar la tipica asignacion de una varibale dinamicamente a
	un objeto como por ejemplo 			constructor : (power) -> @power = power
	se utiliza el alias de this como	constructor : (@power). De esta manera
	se hace la asignacion automatica de la propiedad power evitandonos tener
	que hacerlo explicitamente.
###

class Hero
	#static private
	_count = 0
	constructor: (@power) ->
		_count++
		@says()

	#instance methods
	says: ->
		console.log "#{@number()}. My superpower it's #{@power}!"

	@count : -> _count

superman = new Hero 'Fly'
console.log superman.power