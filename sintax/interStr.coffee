hero = 'Batmam...'

###
	La Interpolacion de cadenas es la introduccion de 
	contenido dinamico en la propia cadena estatica
	para la introduccion de ese contenido dinamico se usa la
	siguiente sintaxis: #{ sentence_coffee }
###
chat = 	"""
			friend : What is your favorite hero?
			soy javi : #{hero}
			friend : Seriuosly? """


born = new Date( 1980, 4, 10 )
now  = new Date().getFullYear()

###
	 Para realizar la interpolcaion de cadenas 
	 la cadena tiene que tener comillas del tipo "".
	 se permiten cualquier sentencia valida para el lenguaje 
	 entre las llaves.
###

answer = """
		  @Soyjavi was born in #{ born.getFullYear() },
		  now has #{ now - born.getFullYear() } years old\
		  ."""

console.log( chat )
console.log( answer )