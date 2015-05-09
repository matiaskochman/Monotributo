package monotributo

class ContratoDeAlquiler {
	Date fechaInicio
	Date fechaFin
	Float superficieAfectada
	Archivo archivoAdjunto
	List listaDetallesDeContrato
	
    static constraints = {
		fechaInicio(nullable:false)
		fechaFin(nullable:false)
		superficieAfectada(nullable:false)
		
    }
	
	static hasMany = [listaDetallesDeContrato:DetalleContratoAlquiler]
}
