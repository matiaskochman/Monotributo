package monotributo

import grails.test.*

class CategoriaControllerTests extends ControllerUnitTestCase {
	def categoriaService
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testSave() {

		//controller.categoriaService = categoriaService
		
		controller.params.alquileresAnuales=1000F
		controller.params.aporteObraSocial = 1100F
		controller.params.aportesAlSipa = 1200F
		controller.params.cantidadMinimaEmpleados = 0
		controller.params.categoria = "B"
		controller.params.energiaElectricaConsumidaAnualmente = 1300F
		controller.params.impuestoLocacionesPrestacionServicios = 1400F
		controller.params.impuestoVentaCosasMuebles = 1500F
		controller.params.superficieAceptada = 30F;
		controller.params.topeIngresosBrutos = 24000F
		//controller.save(controller.params)	
		
		def catController = new CategoriaController()
		catController.categoriaService = new CategoriaService()
		
		catController.save(controller.params)		
    }
}
