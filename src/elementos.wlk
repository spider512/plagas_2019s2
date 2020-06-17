class Hogar {
		var property nivelDeMugre = 0
		var property comfortQueOfrece = 0
	
	method esBueno() { return nivelDeMugre <= comfortQueOfrece/2 }

	method ataque(plaga) { nivelDeMugre = nivelDeMugre + plaga.nivelDeDanio() }}

class Huerta {
		var property capacidadProduccion
		var property produccionASueprar
		
		
	method esBueno() { return capacidadProduccion > produccionASueprar }

	method ataque(plaga) { capacidadProduccion = capacidadProduccion - (plaga.nivelDeDanio() * 0.10)
		if (plaga.transmiteEnfermedad()) {capacidadProduccion = capacidadProduccion - 10 }}}


class Mascota { 
		var property nivelDeSalud
				
	method esBueno() { return nivelDeSalud > 250 }

	method ataque(plaga) { if (plaga.transmiteEnfermedad()) {nivelDeSalud = nivelDeSalud - plaga.nivelDeDanio() }
	}
}

class Barrios {
		var property elementos = []		
	
	method esCopado() { return elementos.filter({ elemento => elemento.esBueno()}).size() > (elementos.size() / 2)}
	
}


	