import antiguedad.*

object coleccionista {
	var coleccion = [farol];
	
	method getAntiguedades(){return coleccion}
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
	/*ver si es lo que se espera */
	method esMuyAntigua(antiguedad){
		return coleccion.hayAntiguedad(antiguedad) 
			&& antiguedad.getAnios() > 100;		
	}
	
}
