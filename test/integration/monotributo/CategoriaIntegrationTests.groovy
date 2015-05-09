package monotributo

import grails.test.*

class CategoriaIntegrationTests extends GroovyTestCase {
	def categoriaService
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testSomething() {
		
    	
		def controller = new CategoriaController() 
		
		def categoria = new Categoria()
		categoria.alquileresAnuales=1000F
		categoria.aporteObraSocial = 1100F
		categoria.aportesAlSipa = 1200F
		categoria.cantidadMinimaEmpleados = 0
		categoria.categoria = "B"
		categoria.energiaElectricaConsumidaAnualmente = 1300F
		categoria.impuestoLocacionesPrestacionServicios = 1400F
		categoria.impuestoVentaCosasMuebles = 1500F
		categoria.superficieAceptada = 30F;
		categoria.topeIngresosBrutos = 24000F
		//controller.save(controller.params)
		
		controller.categoriaService = new CategoriaService()
		
		controller.guardarCategoria(categoria)
    }
}
