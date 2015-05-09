package monotributo

class Establecimiento {
	String tipoEstablecimiento
	String titularDelInmueble
	Boolean activo
	Area provincia
	Area partido
	String partida
	String digito
	String catastro
	/*
	Date fechaInicioAlquiler
	Date fechaFinAlquiler
	Float superficieAlquiler
	Archivo archivoAdjunto
	*/
    static constraints = {
		tipoEstablecimiento(blank:false)
		titularDelInmueble(blank:false)
		activo(nullable:true)
		partida(blank:true)
		digito(blank:true)
		catastro(blank:true)
		provincia(nullable:true)
		partido(nullable:true)
    }
	static belongsTo = [Monotributista]
	
}
