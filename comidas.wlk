import wollok.game.*

object manzana {

	method image() = "manzana.png"

	method position() = game.at(1, 8)

	method energiaQueOtorga() = 40

	method teEncontro(cosa){}

}

object alpiste {

	method image() = "alpiste.png"

	method position() = game.at(2, 2)

	method energiaQueOtorga() = 70

	method teEncontro(cosa){}

}

object manzana2 {

	method image() = "manzana.png"

	method position() = game.at(3, 4)

	method energiaQueOtorga() = 40

	method teEncontro(cosa){}

}