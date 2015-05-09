package monotributo

class ContratoDeAlquilerController {
	def archivoService
	def contratoDeAlquilerService
	    
	
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [contratoDeAlquilerInstanceList: ContratoDeAlquiler.list(params), contratoDeAlquilerInstanceTotal: ContratoDeAlquiler.count()]
    }

    def create = {
        def contratoDeAlquilerInstance = new ContratoDeAlquiler()
        contratoDeAlquilerInstance.properties = params
        return [contratoDeAlquilerInstance: contratoDeAlquilerInstance]
    }

    def save = {
        def instance = new ContratoDeAlquiler(params)
		
		//instance.fechaInicio = params['fechaInicio']
		//instance.fechaFin = params['fechaFin']
		//instance.superficieAfectada = new Float(params['superficieAfectada'])
		
		def archivo = new Archivo();
		archivo.properties = params['myFile']
		String name = params['myFile']
		archivo.nombre = name
		archivo = archivoService.saveObj(archivo);
		
		instance.archivoAdjunto = archivo
		
		guardar(instance)
    }

    def show = {
		def contratoDeAlquilerInstance = contratoDeAlquilerService.showObj(new Integer(params.id))
        if (!contratoDeAlquilerInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'contratoDeAlquiler.label', default: 'ContratoDeAlquiler'), params.id])}"
            redirect(action: "list")
        }
        else {
            [contratoDeAlquilerInstance: contratoDeAlquilerInstance]
        }
    }

    def edit = {
        def contratoDeAlquilerInstance = contratoDeAlquilerService.showObj(new Integer(params.id))
        if (!contratoDeAlquilerInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'contratoDeAlquiler.label', default: 'ContratoDeAlquiler'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [contratoDeAlquilerInstance: contratoDeAlquilerInstance]
        }
    }

    def update = {
        def contratoDeAlquilerInstance = contratoDeAlquilerService.showObj(new Integer(params.id))
        if (contratoDeAlquilerInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (contratoDeAlquilerInstance.version > version) {
                    
                    contratoDeAlquilerInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'contratoDeAlquiler.label', default: 'ContratoDeAlquiler')] as Object[], "Another user has updated this ContratoDeAlquiler while you were editing")
                    render(view: "edit", model: [contratoDeAlquilerInstance: contratoDeAlquilerInstance])
                    return
                }
            }
            contratoDeAlquilerInstance.properties = params
            if (!contratoDeAlquilerInstance.hasErrors() && contratoDeAlquilerService.saveObj(contratoDeAlquilerInstance)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'contratoDeAlquiler.label', default: 'ContratoDeAlquiler'), contratoDeAlquilerInstance.id])}"
                redirect(action: "show", id: contratoDeAlquilerInstance.id)
            }
            else {
                render(view: "edit", model: [contratoDeAlquilerInstance: contratoDeAlquilerInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'contratoDeAlquiler.label', default: 'ContratoDeAlquiler'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def contratoDeAlquilerInstance = contratoDeAlquilerService.showObj(new Integer(params.id))
        if (contratoDeAlquilerInstance) {
            try {
                //contratoDeAlquilerInstance.delete(flush: true)
				contratoDeAlquilerService.deleteObj(contratoDeAlquilerInstance)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'contratoDeAlquiler.label', default: 'ContratoDeAlquiler'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'contratoDeAlquiler.label', default: 'ContratoDeAlquiler'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'contratoDeAlquiler.label', default: 'ContratoDeAlquiler'), params.id])}"
            redirect(action: "list")
        }
    }
	
	public guardar(ContratoDeAlquiler instance) {
		contratoDeAlquilerService.saveObj(instance)


		if (!instance.hasErrors() && instance != null) {
			flash.message = "${message(code: 'default.created.message', args: [message(code: 'contratoDeAlquiler.label', default: 'Contrado de Alquiler'), instance.id])}"
			redirect(action: "show", id: instance.id)
		}
		else {
			render(view: "create", model: [contratoDeAlquilerInstance: instance])
		}
	}

}
