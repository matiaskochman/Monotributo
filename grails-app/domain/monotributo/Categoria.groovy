package monotributo

class Categoria {
	Date fechaInicio
	Date fechaFin
	String categoria
	Float topeIngresosBrutos
	Actividad actividad
	Integer cantidadMinimaEmpleados
	Float superficieAceptada
	Float energiaElectricaConsumidaAnualmente
	Float alquileresAnuales
	Float impuestoLocacionesPrestacionServicios
	Float impuestoVentaCosasMuebles
	Float aportesAlSipa
	Float aporteObraSocial
	
	static hasMany = [historicoCategoria:Categoria]
	
	public Categoria(){
		
	}
	public Categoria(String categoria,Float topeIngresosBrutos,
		Integer cantidadMinimaEmpleados,Float superficieAceptada,
		Float energiaElectricaConsumidaAnualmente,Float alquileresAnuales,
		Float impuestoLocacionesPrestacionServicios,Float impuestoVentaCosasMuebles,
		Float aportesAlSipa,Float aporteObraSocial){
		
		this.alquileresAnuales = alquileresAnuales
		this.aporteObraSocial = aporteObraSocial
		this.aportesAlSipa = aportesAlSipa
		this.cantidadMinimaEmpleados = cantidadMinimaEmpleados
		this.categoria = categoria
		this.energiaElectricaConsumidaAnualmente = energiaElectricaConsumidaAnualmente
		this.impuestoLocacionesPrestacionServicios = impuestoLocacionesPrestacionServicios
		this.impuestoVentaCosasMuebles = impuestoVentaCosasMuebles
		this.superficieAceptada = superficieAceptada
		this.topeIngresosBrutos = topeIngresosBrutos
	}
	
    static constraints = {
		//categoria(unique:true)
		topeIngresosBrutos(nullable:false,min:0F)
		cantidadMinimaEmpleados(nullable:false,min:0)
		superficieAceptada(nullable:false,min:0F)
		energiaElectricaConsumidaAnualmente(nullable:false,min:0F)
		alquileresAnuales(nullable:false,min:0F)
		impuestoLocacionesPrestacionServicios(nullable:false,min:0F)
		impuestoVentaCosasMuebles(nullable:false,min:0F)
		aportesAlSipa(nullable:false,min:0F)
		aporteObraSocial(nullable:false,min:0F)
		actividad(nullable:true)
    }
}
