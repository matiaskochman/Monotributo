package monotributo

class Cliente {
	String nombre
	String cuitCui
	String tipoContribuyente
	String tipoActividad
	String descripcion
	Date fechaDeNacimiento
	//AdminFuncional creadoPor 
	//ResponsableDeCuenta resp
	String contacto
	String tel1
	String tel2
	String celular1
	String celular2
	String email1
	String email2
	String web
	
    static constraints = {
		nombre(nullable:false)
		cuitCui(nullable:false,unique:true)
		tipoContribuyente(nullable:false)
		tipoActividad(nullable:false)
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
}
