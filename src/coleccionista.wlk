import antiguedad.*

object coleccionista {
	var coleccion = [farol,lampara];
	
	method coleccion(){return coleccion}
	method addAntiguedad(antiguedad){
		coleccion.add(antiguedad);
	}
	method addAntiguedades(antiguedades1){
		coleccion.addAll(antiguedades1);
	}
	method hayAntiguedad(antiguedad){
		return coleccion.contains(antiguedad);
	}
	method cuantasAntiguedadesTiene(){
		return coleccion.size();
	}
	method ultimaAntiguedad(){
		return coleccion.last();
	}
	method esMuyAntigua(antiguedad){
		return coleccion.filter({a => a==antiguedad}).map({a=>a.getAnios()>100})
	}	
	method calcularAnios2(antiguedad){
		return coleccion.filter({a => a==antiguedad}).map({a=> a.getAnios()});
	}	
	method restaurarPrimerAntiguedad(){
		return coleccion.first().restaurar();
	}
	method restaurarUltimaAntiguedad(){
		return coleccion.last().restaurar();
	}
	method restaurarAntiguedadEnPosicion(posicion){
		return coleccion.get(posicion-1).restaurar();
	}
	method restaurarAntiguedad(antiguedad){
		const obj= coleccion.filter({a => a==antiguedad});
		//return obj;
		if(obj.map({a=> a.estaEnMalEstado()})==[true]){
			obj.forEach({a=>a.restaurar()});
		}
	}
	method restaurarAntiguedad2(antiguedad){		
		if(antiguedad.estaEnMalEstado()){
			antiguedad.restaurar();
		}
	}
	method venderTodo(){
		coleccion.clear();
	}
	
}
