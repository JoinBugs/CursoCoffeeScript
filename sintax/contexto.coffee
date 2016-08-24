###
	Referencia Al Contexto Actual Modificando o Agregando
	la variable twitter. @ === this
###
@twitter = 'Andres'

###
	Crea Una Propiedad En El Prototipo Del Objeto De 
	Tipo Funcion Game, es un sinonimo del prototype de js.
	Game.prototype.WINNER = 10
###
Game::WINNER = 10

###
	------Ambito------
###

###
	En este primer caso la salida de lifes sera 3
### 
lifes = 0
restarGame = -> lifes = 3
do restarGame

console.log "I have #{lifes} lifes in the game."

###
	En Este segundo caso la salida de lifes sera 0 puesto
	que aun no existe lifes para coffee, para coffe las variables que 
	existen tienen que ser asignadas antes del llamado de una funcion
	sino coffee creara la variable en el ambito de la funcion y por lo cual no 
	afectara a la global.
	El ciclo de vida de una variable perdurará en el ámbito más
	externo en el que se ha hecho una asignación a esa variable
###
restarGame = -> lifes = 3
lifes = 0
do restarGame

console.log "I have #{lifes} lifes in the game."

###
	En este Caso La variable global lifes no es utilizada dentro de 
	la funcion insertCoin aunque previamente ya hubo una asignacion de
	esta, por que explicitamente se esta creando una varible llamada lifes 
	como argumento de la funcion insertCoin, entonces se crea una nueva
	variable lifes como local en el contexto de insertCoin.
###
lifes = 3
insertCoin = ( coins, lifes ) -> lifes += coins * 3
console.log insertCoin 3, lifes #output -> 12
console.log lifes # output -> 3

###
	Apuntar A contexto Actual Y No AL De La Propiedad 
	donde se encuentra el callback.En este ejemplo se muestra
	una sintaxis diferente para la declaracion de una funcion lambda,
	con '=>' subimos un nivel de contexto ahora '@handler' no apunta a 
	el contexto 'el' sino a un contexto mas arriba o mas externo,en el
	ejemplo pasara entonces el llamado de la funcion handler por que 
	actualmente se apunta a este contexto, si se tuviera la anterior
	sintaxis de '->' se apuntaria al contexto de el objeto 'el' donde
	claro no existe la funcion 'handler'. es decir que dependiendo
	de la utilizacion para creacion de funciones lambda con '->' o
	con '=>' el contexto de '@(this)' se mantiene('->') o sube('=>')
	un nivle en el contexto actual.
###

handler = ( event ) -> console.log event
el.addEventListener 'click', ( event ) => @handler event