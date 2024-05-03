object farol {
	var malEstado= true;
	var anios = 30;
	
	method estaEnMalEstado(){return malEstado}
	method getAnios(){return anios}
	method restaurar(){
		malEstado=false;
	}	
}

object lampara {
	var malEstado= true;
	var anios = 130;
	
	method estaEnMalEstado(){return malEstado}
	method getAnios(){return anios}
	method restaurar(){
		malEstado=false;
	}	
}