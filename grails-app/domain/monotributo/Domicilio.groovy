package monotributo

class Domicilio {
	String tipoDeDomicilio
	String calle
	String numero
	String sector
	String torre
	String piso
	String deptoLocalOficina
	String manzana
	Area provincia
	Area partido
	Area localidad
	String codigoPostal
	
    static constraints = {
		tipoDeDomicilio(nullable:false)
		calle(nullable:false)
		numero(nullable:false)
		sector(nullable:true)
		torre(nullable:true)
		piso(nullable:true)
		deptoLocalOficina(nullable:true)
		manzana(nullable:true)
		codigoPostal(nullable:true)
		provincia(nullable:false)
		partido(nullable:false)
		localidad(nullable:false)
    }
	static belongsTo = [Monotributista]
	
}
