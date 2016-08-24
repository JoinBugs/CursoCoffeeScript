year = new Date().getFullYear()

#sin parentesis,ni llaves para delimitar el contexto.
#igual que en python adiferencia de :
if year == 1980
	born = true
else 
	born = false

#en una sola linea se reaquiere de la keyword then
# 'is' == '==='
if year is 1980 then born = true else born = false
# con el operador ternario( solo compilado a js claro )
born = if year is 1980 then true else false

###
	por un codigo mas semantico:
	is, isnt, unless
###

#estilo ruby
born = true if year is 1980
#negacion bastante semantica
born = false if year isnt 1980
#o al mero estilo ruby
born = false if year is not 1980
#o al propio estilo coffe
# unless : a menos que, a no ser que.
born = false unless year is 1980