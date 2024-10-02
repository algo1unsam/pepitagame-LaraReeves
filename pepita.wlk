import comidas.*
import extras.*
import wollok.game.*

object pepita {

	var property energia = 100
	var property position = game.origin()

	method image() {
		return 
		if (self.estaEnElNido()) "pepita-grande.png" 
		else if(self.position() == silvestre.position() or self.energia() < 0) "pepita-gris.png"
		else "pepita.png"
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
		if(self.position() == manzana.position()){
			game.removeVisual(manzana)
		}
		if(self.position() == manzana2.position()){
			game.removeVisual(manzana2)
		}
	}

	method vola(kms) {
		energia = energia - kms * 9
	}

	method irA(nuevaPosicion) {
		if(not self.estaCansada()){
			self.vola(position.distance(nuevaPosicion))
			position = nuevaPosicion
		}
	}

	method estaCansada() {
		if(self.energia() <= 0){
			game.stop()
		}
		return energia <= 0
	}

	method estaEnElNido() {
		return position == nido.position()
	}
	
	
	method estaEnElSuelo() {
		return position.y() == 0 
	}

	method caer(){
		if(not self.estaEnElSuelo()){
			position = position.down(1)
		}
	}

}

