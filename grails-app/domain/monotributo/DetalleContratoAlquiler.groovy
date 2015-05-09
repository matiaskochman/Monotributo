package monotributo

class DetalleContratoAlquiler {
	Integer anio
	Integer mes
	Float montoAlquiler
	Boolean pago
	
    static constraints = {
		anio(nullable:false)
		mes(nullable:false)
		pago(nullabla:true)
    }
}
