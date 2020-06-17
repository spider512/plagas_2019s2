class Plaga {
		var property poblacion
		
	method transmiteEnfermedad() { return poblacion > 9 }
	method atacar(elemento) { elemento.ataque(self)
		self.efectoAtaque()
			}
	method efectoAtaque() { poblacion = poblacion + (poblacion * 0.10)}
}

class Cucaracha inherits Plaga {
		var property pesoPromedio = 1
	
	method nivelDeDanio() { return poblacion / 2}
	
	override method transmiteEnfermedad() { return ( pesoPromedio > 9 ) and super() }
	override method efectoAtaque() { super()
		pesoPromedio = pesoPromedio + 2 }
	
}

class Pulgas inherits Plaga {
	
	method nivelDeDanio() { return poblacion * 2}
}

class Garrapatas inherits Plaga { 
	
	method nivelDeDanio() { return poblacion * 2}
	override method efectoAtaque() { poblacion = poblacion + (poblacion*0.20)}
}

class Mosquitos inherits Plaga { 
	
	method nivelDeDanio() { return poblacion }
	override method transmiteEnfermedad() { return ( poblacion % 3 == 0 ) and super()}
}