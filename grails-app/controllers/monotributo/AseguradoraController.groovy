package monotributo

class AseguradoraController {
	def aseguradoraService
	
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [aseguradoraInstanceList: Aseguradora.list(params), aseguradoraInstanceTotal: Aseguradora.count()]
    }

    def create = {
        def aseguradoraInstance = new Aseguradora()
        aseguradoraInstance.properties = params
        return [aseguradoraInstance: aseguradoraInstance]
    }

    def save = {
        def aseguradoraInstance = new Aseguradora(params)
        if (aseguradoraInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'aseguradora.label', default: 'Aseguradora'), aseguradoraInstance.id])}"
            redirect(action: "show", id: aseguradoraInstance.id)
        }
        else {
            render(view: "create", model: [aseguradoraInstance: aseguradoraInstance])
        }
    }

    def show = {
        //def aseguradoraInstance = Aseguradora.get(params.id)
		def aseguradoraInstance = aseguradoraService.showObj(new Integer(params.id))
		
        if (!aseguradoraInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'aseguradora.label', default: 'Aseguradora'), params.id])}"
            redirect(action: "list")
        }
        else {
            [aseguradoraInstance: aseguradoraInstance]
        }
    }

    def edit = {
		def aseguradoraInstance = aseguradoraService.showObj(new Integer(params.id))
        if (!aseguradoraInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'aseguradora.label', default: 'Aseguradora'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [aseguradoraInstance: aseguradoraInstance]
        }
    }

    def update = {
		def aseguradoraInstance = aseguradoraService.showObj(new Integer(params.id))
        if (aseguradoraInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (aseguradoraInstance.version > version) {
                    
                    aseguradoraInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'aseguradora.label', default: 'Aseguradora')] as Object[], "Another user has updated this Aseguradora while you were editing")
                    render(view: "edit", model: [aseguradoraInstance: aseguradoraInstance])
                    return
                }
            }
            aseguradoraInstance.properties = params
            if (!aseguradoraInstance.hasErrors() && aseguradoraService.saveObj(aseguradoraInstance)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'aseguradora.label', default: 'Aseguradora'), aseguradoraInstance.id])}"
                redirect(action: "show", id: aseguradoraInstance.id)
            }
            else {
                render(view: "edit", model: [aseguradoraInstance: aseguradoraInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'aseguradora.label', default: 'Aseguradora'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
		def aseguradoraInstance = aseguradoraService.showObj(new Integer(params.id))
        if (aseguradoraInstance) {
            try {
                aseguradoraInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'aseguradora.label', default: 'Aseguradora'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'aseguradora.label', default: 'Aseguradora'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'aseguradora.label', default: 'Aseguradora'), params.id])}"
            redirect(action: "list")
        }
    }
	
	public guardar(Aseguradora instance) {
		aseguradoraService.saveObj(instance)


		if (!instance.hasErrors() && instance != null) {
			flash.message = "${message(code: 'default.created.message', args: [message(code: 'aseguradora.label', default: 'Aseguradora'), instance.id])}"
			redirect(action: "show", id: instance.id)
		}
		else {
			render(view: "create", model: [aseguradoraInstance: instance])
		}
	}

}
