package monotributo

class Actividad {
	String descripcion 
	Integer isDefault = 1
	
    static constraints = {
		descripcion(nullable:false)
    }
}
