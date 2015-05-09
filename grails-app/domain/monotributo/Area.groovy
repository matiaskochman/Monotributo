package monotributo

class Area {
	String descripcion
	String tipo
	Area areaPadre
	
    static constraints = {
		descripcion(nullable:false, unique:true)
		tipo(nullable:false)
		areaPadre(nullable:true)	
    }
}
