class Vehicle
	fuel : 100
	constructor : (@type, @hero) ->
	use : ->
		@fuel--
		if @fuel > 0
			console.log "#{@hero} is using a #{@type}"
		else
			console.log "Upps!! No fuel in the tank of #{@constructor.name}"

class BatMobile extends Vehicle
	constructor: ->
		super 'car', 'Batman'

class BatPod extends Vehicle
	fuel : 0
	constructor : ->
		super 'moto', 'Robin'
	refuel : ->
		@fuel = 10

batMobile = new BatMobile()
console.log do batMobile.use

batPod = new BatPod()
console.log do batPod.use
do batPod.refuel
console.log do batPod.use