package monotributo

class GrupoFamiliar {
	String nombre
	String apellido
	String parentesco
	String tipoDeDocumento
	String numeroDeDocumento
	Date fechaDeNacimiento
	Archivo archivoAdjunto
	
    static constraints = {
		nombre(blank:false)
		apellido(blank:false)
		parentesco(blank:false)
		tipoDeDocumento(blank:false)
		numeroDeDocumento(blank:false, unique:true)
		fechaDeNacimiento(nullable:true)
		archivoAdjunto(nullable:true)
    }
	
	static belongsTo = [monotributista:Monotributista]
}
