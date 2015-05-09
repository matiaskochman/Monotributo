package monotributo

class Archivo {
	String nombre
	String tipo
	byte[] myFile
	
    static constraints = {
		tipo(nullable:true)
		nombre(nullable:true)
		myFile(nullable:false, max:2000000)
    }
	
	static belongsTo = [ContratoDeAlquiler, GrupoFamiliar]
}
