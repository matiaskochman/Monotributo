package monotributo

class Vehiculo {
	String dominio
	String condicionVehiculo
	Float montoAlquiler
	Aseguradora aseguradora
	Float montoPrima
	String numeroDePoliza
	
    static constraints = {
		dominio(blank:false)
		condicionVehiculo(blank:false)
		montoAlquiler(nullable:true)
		aseguradora(nullable:true)
		montoPrima(nullable:true)
		numeroDePoliza(nullable:true)
    }
	
	static belongsTo = [Monotributista]
	
}
