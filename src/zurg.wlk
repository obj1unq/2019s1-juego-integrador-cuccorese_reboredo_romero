import wollok.game.*

object zurg {

	var property position = game.at(0, 10)

	// method position() = game.at(0,10)
	method image() = "villano.png"

	method teEncontro(persona) {
	}

	method moverse() {
		if (self.position() == game.at(0, 9)) {
			self.position(game.at(0, 10))
		} else {
			self.position(game.at(0, 9))
		}
	}

}

