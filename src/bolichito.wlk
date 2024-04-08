
/*## Bolichito

Agregar al modelo un bolichito, que vende dos objetos: uno está en la vidriera, otro está en el mostrador.
Estos objetos van cambiando con el tiempo.

Se esperar que el objeto que representa al bolichito responda a estos mensajes:
- `esBrillante()`: indica si los dos objetos que tiene (el de mostrador y el de vidriera) son de un material que brilla.

- `esMonocromatico()`: indica si los dos objetos que tiene son del mismo color. <br> 
  Esto se daría si tiene p.ej. la remera en mostrador y la placa en vidriera, 
  y la placa se configura como de color rojo y peso 2400 gramos.
  
- `estaDesequilibrado()`: indica si el objeto en el mostrador pesa más que el de la vidriera. <br> 
  P.ej. si el bolichito tiene la biblioteca en el mostrador y la remera en la vidriera, está 
  * desequilibrado.
  
- `tieneAlgoDeColor(color)`: indica si alguno de los dos objetos que tiene el boliche es del 
* color indicado. <br>
  P.ej. si el bolichito tiene la biblioteca en la vidriera y la remera en el mostrador, 
  entonces tiene algo de color rojo y tiene algo de color verde, pero no tiene nada de color pardo.
  
- `puedeMejorar()`: indica si el bolichito puede mejorar en uno de los siguientes aspectos: o bien está desequilibrado 
* (falta de equilibrio), o bien es monocromático (falta de alegría).
  
- `puedeOfrecerleAlgoA(persona)`: indica si alguno de los dos objetos que tiene en venta el boliche le gustan a la persona. <br>
  P.ej. si el bolichito tiene la remera en la vidriera y la pelota en el mostrador,
  entonces puede ofrecerle algo a Estefanía (la remera) y a Juan (la pelota) 
  pero no a Luisa (porque no le gustan ni la remera ni la pelota).
  
  
## Más cosas

Agregar al modelo estos objetos:

- un _arito_ celeste de cobre, que pesa 180 gramos.
- un _banquito_ de madera que pesa 1700 gramos. 
  Al principio es naranja, pero puede cambiar de color. 
  El naranja es un color fuerte.
- una _cajita_ roja de cobre, que tiene un objeto adentro. 
  Este objeto puede ser cualquiera de los definidos previamente, y puede cambiar.
  El peso de la cajita es de 400 gramos más el peso de lo que tiene adentro. */
  
import personas.*
  
 object bolichito{
  	
  	method esBrillante(prodMostrador,prodVidriera){
  		
  		return prodMostrador.esBrillante() && prodVidriera.esBrillante()
  	}
 
	method esMonocromatico(){
		
		return vidriera.productoDisponible().color() == mostrador.productoDisponible().color()  
	}
	
	method estaDesequilibrado(){
		
		return vidriera.productoDisponible().peso() > mostrador.productoDisponible().peso() or vidriera.productoDisponible().peso() < mostrador.productoDisponible().peso()
	}
	
	method tieneAlgoDeColor(color){
		
		return vidriera.productoDisponible().color() == color
	}
	
	method puedeMejorar(){
		return self.estaDesequilibrado() or self.esMonocromatico()
	}
	
    method puedeOfrecerleAlgoA(persona){ 
    	
    	return persona.leGusta(vidriera.productoDisponible()) or persona.leGusta(mostrador.productoDisponible())
    }
  
  }
  
  
 object vidriera{
 	
 	var productoExpuesto = _remera_
 	
 	method ponerProducto(cosa){
 		productoExpuesto = cosa
 		return productoExpuesto
 	}
 	
 	method productoDisponible(){
 		return self.ponerProducto(productoExpuesto)
 	}
 	
 	method cambiarObjeto(nuevoObjeto){
		productoExpuesto = nuevoObjeto
	}
 	 	
 }
 
 
 object mostrador{
	
	var productoExpuesto = _munieco_
 	
 	method ponerProducto(cosa){
 		productoExpuesto = cosa
 		return productoExpuesto
 	}
 	
 	method productoDisponible(){
 		return self.ponerProducto(productoExpuesto)
 	}
 	
 	method cambiarObjeto(nuevoObjeto){
		productoExpuesto = nuevoObjeto
	}
		
}

object arito_{
	
	method peso(){
		return 800
	}
	
	method color(){
		return celeste
	}
	
}

object _banquito_{
	
	method peso(){
		return 1700
		}
	
	method color(unColor){
		return unColor
		}
} 

object naranja{
	
	method esFuerte(){
		return true
	}
}

object _cajita_ {
	
	var objetoDentro= _pelota_
	
	method color(){
		return rojo
	}
	
	method material(){
		return cobre
	}
	
	method peso(){
		return 400 + self.objetoDentro().peso()
	}
	
	method objetoDentro(){
		return objetoDentro
	}
	
	method cambiarObjeto(cosa){
		objetoDentro = cosa
	}
} 


  