package monotributo

class Aseguradora {
	String nombre
	String cuit_cui
    static constraints = {
		nombre(blank:false,unique:true)
		cuit_cui(blank:false,unique:true)
    }
}
