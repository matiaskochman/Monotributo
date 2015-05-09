package monotributo

class Monotributista extends Cliente{
	
	List listaDomicilios = new ArrayList()
	List listaGrupoFamiliar = new ArrayList()
	List listaEstablecimientos = new ArrayList()
	List listaTitulosProfesionales = new ArrayList()
	List listaVehiculos = new ArrayList()
	
    static constraints = {
		listaDomicilios(nullable:true)
		listaGrupoFamiliar(nullable:true)
		listaEstablecimientos(nullable:true)
		listaTitulosProfesionales(nullable:true)
		listaVehiculos(nullable:true)

		nombre(nullable:false)
		cuitCui(nullable:false,unique:true)
		tipoContribuyente(nullable:true)
		tipoActividad(nullable:true)
		descripcion(nullable:true)
		fechaDeNacimiento(nullable:true)
		contacto(nullable:true)
		tel1(nullable:true)
		tel2(nullable:true)
		celular1(nullable:true)
		celular2(nullable:true)
		email1(nullable:true)
		email2(nullable:true)
		web(nullable:true)

    }
	static mapping = {
		listaGrupoFamiliar lazy: true
		listaDomicilios batchSize:10
		listaEstablecimientos lazy:true
		listaTitulosProfesionales lazy:true
		listaVehiculos lazy:true
		
	}

	static hasMany = [listaDomicilios:Domicilio,
					  listaGrupoFamiliar:GrupoFamiliar,
					  listaEstablecimientos:Establecimiento,
					  listaTitulosProfesionales:TituloProfesional,
					  listaVehiculos:Vehiculo]
}
