import bolichito.*

object rosa {
	
	method leGusta(cosa){
		return cosa.peso().between(0 , 2000) 
	}
	
}

object estefania {
	
	method leGusta(cosa){
		return cosa.esFuerte()
	}
	
}

object luisa {
	
	method leGusta(cosa){
		return cosa.esBrillante() 
	}
	
}

object juan {
	
	method leGusta(cosa){
		return  not cosa.esFuerte()  or cosa.peso().between(1200,1800)  
	}
	
}


object rojo{
	
	method esFuerte(){
		return true
	}
}

object verde {
	
	method esFuerte(){
		return true
	}
}

object celeste{
	
	method esFuerte(){
		
		return false
	}
}


object pardo{
	
	method esFuerte(){
		
		return false
	}
}

object cobre{
	
	method esBrillante(){
		return true 
	}
}

object vidrio{
	
	method esBrillante(){
		return true
	}
}

object lino{
	
	method esBrillante(){
		return false
		
		}
}

object madera {
	
	method esBrillante(){
		return false
	}

}

object cuero{
	
	method esBrillante(){
		return false
	}
}


object _remera_{

		method color(){
			return  rojo
		}
		
		method peso(){
			return 800
		}
		
		method material(){
			return lino
		}
  }
  
object _pelota_{
  	
  	method color(){
  		return pardo
  	}
		
	method peso(){
		return 1300
	}
		
	method material(){
		return cuero
	}
  	
  }
  
object _biblioteca_{
  	
  	method color(){
  		return verde
  	}
		
	method peso(){
		return 8000
	}
		
	method material(){
		return cuero
	}
  
  }
  
object _munieco_{
	
	
	method color(){
  		return celeste
  	}
		
	method peso(unPeso){
		return unPeso
	}
		
	method material(){
		return vidrio
	}
	
}
  
  
 object _placa_{
 	
	
 	method color(unColor){
  		return unColor
  	}
		
	method peso(unPeso){
		return unPeso
	}
		
	method material(){
		return cobre
	}
 }