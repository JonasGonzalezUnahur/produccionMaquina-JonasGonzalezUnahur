object registroProduccion {
	const piezasProducidas = [43,18,49,62,33,39]
	method algunDiaSeProdujo(cantidad){
		return piezasProducidas.contains(cantidad)
	}
	method maximoValorDeProduccion(){
		return piezasProducidas.max()
	}
	method valoresDeProduccionPares(){
		return piezasProducidas.filter{
			n => n.even()
		}
	}
	method produccionEsAcotada(n1, n2){
		// n1 es el mas pequeño y n2 el mas grande
		return piezasProducidas.all{
			n => n1 < n and n < n2
		}
	}
	method produccionesSuperioresA(cuanto){
		return piezasProducidas.filter{
			n => cuanto < n
		}
	}
	method produccionesSumando(cuanto){
		return piezasProducidas.map{
			n => n + 5
		}
	} 
	method totalProducido(){
		return piezasProducidas.sum()
	}
	method ultimoValorDeProduccion(){
		return piezasProducidas.last() 
	}
	method cantidadProduccionesMayorALaPrimera(){
		return piezasProducidas.count{n => piezasProducidas.first() < n
	}}
} 