import pepita.*
import wollok.game.*

object nido {

	var property position = game.at(7, 8)

	method image() = "nido.png"

	method energiaQueOtorga() = 0

	method teEncontro(ave) {
		game.say(ave, "GANASTE! WIII")
		game.schedule(2000, { game.stop() })
	}
}


object silvestre {

	method image() = "silvestre.png"

	method position() = game.at(self.perseguir(),0)

	method perseguir() = pepita.position().x().max(3)

	method energiaQueOtorga() = 0

	method teEncontro(ave){
		game.say(ave, "PERDI :()")
		game.schedule(2000, { game.stop() })
	}
	
}
