import wollok.game.*
import harold.*
import muros.*
import comida.*
import meta.*
import arma.*
import zurg.*
/*Hay un bug en el cambio de niveles.. siempre pasa al 2.. revisar bien */
class Niveles {

	var property niveles = [ nivel1, nivel2, nivel3, nivel4, nivel5 ]

	method pasarASiguienteNivel(personaje) { /*Luego ir viendo precondiciones de paso a nivel del personaje */
		if (meta.position() == harold.position()) {
			self.niveles(niveles.drop(1))
			niveles.head().setear()
		} else {
			game.say(harold, "No puedo pasar de Nivel")
		}
	}

	method setear() {
		// Limpio todo primero que nada
		game.clear()
			// Muros
		self.murosLaterales()
		self.complejidad()
			// Personajes
		self.elementosEstandar()
		self.controles()
			// Colisiones
		self.colisionesEstandar()
	}

	method complejidad() {
	}

	method murosLaterales() {
		game.addVisual(new Muro(position = game.at(11, 11)))
		game.addVisual(new Muro(position = game.at(10, 11)))
		game.addVisual(new Muro(position = game.at(9, 11)))
		game.addVisual(new Muro(position = game.at(8, 11)))
		game.addVisual(new Muro(position = game.at(7, 11)))
		game.addVisual(new Muro(position = game.at(6, 11)))
		game.addVisual(new Muro(position = game.at(5, 11)))
		game.addVisual(new Muro(position = game.at(4, 11)))
		game.addVisual(new Muro(position = game.at(3, 11)))
		game.addVisual(new Muro(position = game.at(2, 11)))
		game.addVisual(new Muro(position = game.at(1, 11)))
		game.addVisual(new Muro(position = game.at(0, 11)))
		game.addVisual(new Muro(position = game.at(0, 1)))
		game.addVisual(new Muro(position = game.at(0, 2)))
		game.addVisual(new Muro(position = game.at(0, 3)))
		game.addVisual(new Muro(position = game.at(0, 4)))
		game.addVisual(new Muro(position = game.at(0, 5)))
		game.addVisual(new Muro(position = game.at(0, 6)))
		game.addVisual(new Muro(position = game.at(0, 7)))
		game.addVisual(new Muro(position = game.at(0, 8)))
		game.addVisual(new Muro(position = game.at(0, 9)))
		game.addVisual(new Muro(position = game.at(0, 10)))
		game.addVisual(new Muro(position = game.at(0, 11)))
		game.addVisual(new Muro(position = game.at(2, 0)))
		game.addVisual(new Muro(position = game.at(3, 0)))
		game.addVisual(new Muro(position = game.at(4, 0)))
		game.addVisual(new Muro(position = game.at(5, 0)))
		game.addVisual(new Muro(position = game.at(6, 0)))
		game.addVisual(new Muro(position = game.at(7, 0)))
		game.addVisual(new Muro(position = game.at(8, 0)))
		game.addVisual(new Muro(position = game.at(9, 0)))
		game.addVisual(new Muro(position = game.at(10, 0)))
		game.addVisual(new Muro(position = game.at(11, 0)))
		game.addVisual(new Muro(position = game.at(11, 9)))
		game.addVisual(new Muro(position = game.at(11, 8)))
		game.addVisual(new Muro(position = game.at(11, 7)))
		game.addVisual(new Muro(position = game.at(11, 6)))
		game.addVisual(new Muro(position = game.at(11, 5)))
		game.addVisual(new Muro(position = game.at(11, 4)))
		game.addVisual(new Muro(position = game.at(11, 3)))
		game.addVisual(new Muro(position = game.at(11, 2)))
		game.addVisual(new Muro(position = game.at(11, 1)))
	}

	method controles() {
		keyboard.up().onPressDo{ harold.moverse(harold.position().up(1))}
		keyboard.down().onPressDo{ harold.moverse(harold.position().down(1))}
		keyboard.right().onPressDo{ harold.moverse(harold.position().right(1))}
		keyboard.left().onPressDo{ harold.moverse(harold.position().left(1))}
		keyboard.z().onPressDo{ harold.comerPrimeroDeLaMochila()}
		keyboard.p().onPressDo{ self.pasarASiguienteNivel(harold)}
	}

	method elementosEstandar() {
		harold.position(game.at(0, 0))
		game.addVisual(harold)
		game.addVisual(meta)
	}

	method colisionesEstandar() {
		game.whenCollideDo(harold, { cosa => cosa.teEncontro(harold)})
	}

}

object nivel1 inherits Niveles {

	method murosInternos() {
		game.addVisual(new Muro(position = game.at(1, 10)))
		game.addVisual(new Muro(position = game.at(8, 10)))
		game.addVisual(new Muro(position = game.at(1, 9)))
		game.addVisual(new Muro(position = game.at(3, 9)))
		game.addVisual(new Muro(position = game.at(6, 9)))
		game.addVisual(new Muro(position = game.at(7, 9)))
		game.addVisual(new Muro(position = game.at(8, 9)))
		game.addVisual(new Muro(position = game.at(10, 9)))
		game.addVisual(new Muro(position = game.at(1, 8)))
		game.addVisual(new Muro(position = game.at(2, 8)))
		game.addVisual(new Muro(position = game.at(4, 8)))
		game.addVisual(new Muro(position = game.at(8, 8)))
		game.addVisual(new Muro(position = game.at(8, 7)))
		game.addVisual(new Muro(position = game.at(9, 7)))
		game.addVisual(new Muro(position = game.at(2, 6)))
		game.addVisual(new Muro(position = game.at(3, 6)))
		game.addVisual(new Muro(position = game.at(4, 6)))
		game.addVisual(new Muro(position = game.at(5, 6)))
		game.addVisual(new Muro(position = game.at(6, 6)))
		game.addVisual(new Muro(position = game.at(2, 5)))
		game.addVisual(new Muro(position = game.at(3, 5)))
		game.addVisual(new Muro(position = game.at(8, 5)))
		game.addVisual(new Muro(position = game.at(9, 5)))
		game.addVisual(new Muro(position = game.at(10, 5)))
		game.addVisual(new Muro(position = game.at(1, 4)))
		game.addVisual(new Muro(position = game.at(2, 4)))
		game.addVisual(new Muro(position = game.at(3, 4)))
		game.addVisual(new Muro(position = game.at(5, 4)))
		game.addVisual(new Muro(position = game.at(7, 4)))
		game.addVisual(new Muro(position = game.at(2, 3)))
		game.addVisual(new Muro(position = game.at(5, 3)))
	}

	override method complejidad() {
		self.murosInternos()
	}

}

object nivel2 inherits Niveles {

	method murosInternos() {
		game.addVisual(new Muro(position = game.at(5, 10)))
		game.addVisual(new Muro(position = game.at(5, 9)))
		game.addVisual(new Muro(position = game.at(9, 9)))
		game.addVisual(new Muro(position = game.at(5, 8)))
		game.addVisual(new Muro(position = game.at(8, 8)))
		game.addVisual(new Muro(position = game.at(2, 7)))
		game.addVisual(new Muro(position = game.at(3, 7)))
		game.addVisual(new Muro(position = game.at(10, 7)))
		game.addVisual(new Muro(position = game.at(2, 6)))
		game.addVisual(new Muro(position = game.at(3, 6)))
		game.addVisual(new Muro(position = game.at(4, 6)))
		game.addVisual(new Muro(position = game.at(7, 6)))
		game.addVisual(new Muro(position = game.at(10, 6)))
		game.addVisual(new Muro(position = game.at(5, 5)))
		game.addVisual(new Muro(position = game.at(7, 5)))
		game.addVisual(new Muro(position = game.at(8, 5)))
		game.addVisual(new Muro(position = game.at(10, 5)))
		game.addVisual(new Muro(position = game.at(1, 4)))
		game.addVisual(new Muro(position = game.at(5, 4)))
		game.addVisual(new Muro(position = game.at(7, 4)))
		game.addVisual(new Muro(position = game.at(7, 3)))
		game.addVisual(new Muro(position = game.at(9, 3)))
		game.addVisual(new Muro(position = game.at(10, 3)))
	}

	override method complejidad() {
		self.murosInternos()
	}

}

object nivel3 inherits Niveles {

	method murosInternos() {
		game.addVisual(new Muro(position = game.at(9, 10)))
		game.addVisual(new Muro(position = game.at(4, 9)))
		game.addVisual(new Muro(position = game.at(9, 9)))
		game.addVisual(new Muro(position = game.at(2, 8)))
		game.addVisual(new Muro(position = game.at(4, 8)))
		game.addVisual(new Muro(position = game.at(5, 8)))
		game.addVisual(new Muro(position = game.at(6, 8)))
		game.addVisual(new Muro(position = game.at(9, 8)))
		game.addVisual(new Muro(position = game.at(2, 7)))
		game.addVisual(new Muro(position = game.at(4, 7)))
		game.addVisual(new Muro(position = game.at(2, 6)))
		game.addVisual(new Muro(position = game.at(4, 6)))
		game.addVisual(new Muro(position = game.at(10, 6)))
		game.addVisual(new Muro(position = game.at(2, 5)))
		game.addVisual(new Muro(position = game.at(5, 5)))
		game.addVisual(new Muro(position = game.at(6, 5)))
		game.addVisual(new Muro(position = game.at(7, 5)))
		game.addVisual(new Muro(position = game.at(9, 5)))
		game.addVisual(new Muro(position = game.at(2, 4)))
		game.addVisual(new Muro(position = game.at(3, 4)))
		game.addVisual(new Muro(position = game.at(2, 3)))
		game.addVisual(new Muro(position = game.at(3, 3)))
		game.addVisual(new Muro(position = game.at(5, 3)))
		game.addVisual(new Muro(position = game.at(6, 3)))
		game.addVisual(new Muro(position = game.at(7, 3)))
		game.addVisual(new Muro(position = game.at(8, 3)))
		game.addVisual(new Muro(position = game.at(9, 3)))
		game.addVisual(new Muro(position = game.at(3, 2)))
		game.addVisual(new Muro(position = game.at(8, 2)))
		game.addVisual(new Muro(position = game.at(3, 1)))
		game.addVisual(new Muro(position = game.at(8, 1)))
	}

	override method complejidad() {
		self.murosInternos()
	}

}

object nivel4 inherits Niveles {

	method murosInternos() {
		game.addVisual(new Muro(position = game.at(4, 10)))
		game.addVisual(new Muro(position = game.at(8, 10)))
		game.addVisual(new Muro(position = game.at(2, 9)))
		game.addVisual(new Muro(position = game.at(4, 9)))
		game.addVisual(new Muro(position = game.at(6, 9)))
		game.addVisual(new Muro(position = game.at(8, 9)))
		game.addVisual(new Muro(position = game.at(10, 9)))
		game.addVisual(new Muro(position = game.at(2, 8)))
		game.addVisual(new Muro(position = game.at(4, 8)))
		game.addVisual(new Muro(position = game.at(6, 8)))
		game.addVisual(new Muro(position = game.at(8, 8)))
		game.addVisual(new Muro(position = game.at(10, 8)))
		game.addVisual(new Muro(position = game.at(2, 7)))
		game.addVisual(new Muro(position = game.at(6, 7)))
		game.addVisual(new Muro(position = game.at(8, 7)))
		game.addVisual(new Muro(position = game.at(10, 7)))
		game.addVisual(new Muro(position = game.at(2, 6)))
		game.addVisual(new Muro(position = game.at(3, 6)))
		game.addVisual(new Muro(position = game.at(5, 6)))
		game.addVisual(new Muro(position = game.at(8, 6)))
		game.addVisual(new Muro(position = game.at(3, 5)))
		game.addVisual(new Muro(position = game.at(5, 5)))
		game.addVisual(new Muro(position = game.at(7, 5)))
		game.addVisual(new Muro(position = game.at(8, 5)))
		game.addVisual(new Muro(position = game.at(9, 5)))
		game.addVisual(new Muro(position = game.at(1, 4)))
		game.addVisual(new Muro(position = game.at(3, 4)))
		game.addVisual(new Muro(position = game.at(4, 4)))
		game.addVisual(new Muro(position = game.at(5, 4)))
		game.addVisual(new Muro(position = game.at(7, 4)))
		game.addVisual(new Muro(position = game.at(1, 3)))
		game.addVisual(new Muro(position = game.at(5, 3)))
		game.addVisual(new Muro(position = game.at(9, 3)))
	}

	override method complejidad() {
		self.murosInternos()
	}

}

object nivel5 inherits Niveles {

	method murosInternos() {
		game.addVisual(new Muro(position = game.at(1, 10)))
		game.addVisual(new Muro(position = game.at(2, 10)))
		game.addVisual(new Muro(position = game.at(6, 10)))
		game.addVisual(new Muro(position = game.at(1, 9)))
		game.addVisual(new Muro(position = game.at(7, 9)))
		game.addVisual(new Muro(position = game.at(9, 9)))
		game.addVisual(new Muro(position = game.at(10, 9)))
		game.addVisual(new Muro(position = game.at(1, 8)))
		game.addVisual(new Muro(position = game.at(3, 8)))
		game.addVisual(new Muro(position = game.at(4, 8)))
		game.addVisual(new Muro(position = game.at(5, 8)))
		game.addVisual(new Muro(position = game.at(7, 8)))
		game.addVisual(new Muro(position = game.at(1, 7)))
		game.addVisual(new Muro(position = game.at(5, 7)))
		game.addVisual(new Muro(position = game.at(7, 7)))
		game.addVisual(new Muro(position = game.at(3, 6)))
		game.addVisual(new Muro(position = game.at(5, 6)))
		game.addVisual(new Muro(position = game.at(7, 6)))
		game.addVisual(new Muro(position = game.at(9, 6)))
		game.addVisual(new Muro(position = game.at(1, 5)))
		game.addVisual(new Muro(position = game.at(2, 5)))
		game.addVisual(new Muro(position = game.at(3, 5)))
		game.addVisual(new Muro(position = game.at(5, 5)))
		game.addVisual(new Muro(position = game.at(7, 5)))
		game.addVisual(new Muro(position = game.at(8, 5)))
		game.addVisual(new Muro(position = game.at(9, 5)))
		game.addVisual(new Muro(position = game.at(1, 4)))
		game.addVisual(new Muro(position = game.at(2, 4)))
		game.addVisual(new Muro(position = game.at(3, 4)))
		game.addVisual(new Muro(position = game.at(5, 4)))
		game.addVisual(new Muro(position = game.at(1, 3)))
		game.addVisual(new Muro(position = game.at(2, 3)))
		game.addVisual(new Muro(position = game.at(3, 3)))
		game.addVisual(new Muro(position = game.at(5, 3)))
	}

	override method complejidad() {
		self.murosInternos()
	}

}

