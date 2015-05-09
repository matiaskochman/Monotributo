import org.springframework.web.context.support.WebApplicationContextUtils

class BootStrap {

    def init = { servletContext ->
		def appCtx = WebApplicationContextUtils.getRequiredWebApplicationContext(servletContext)
		appCtx.areaService.generarAreas()
		appCtx.colegioProfesionalService.generarColegios()
		appCtx.aseguradoraService.generateAseguradoras()
		appCtx.monotributistaService.generarMonotributista()
		
    }
    def destroy = {
    }
}
