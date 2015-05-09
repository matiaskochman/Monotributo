package monotributo

class ColegioProfesionalController {
	def colegioProfesionalService
	
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [colegioProfesionalInstanceList: ColegioProfesional.list(params), colegioProfesionalInstanceTotal: ColegioProfesional.count()]
    }

    def create = {
        def colegioProfesionalInstance = new ColegioProfesional()
        colegioProfesionalInstance.properties = params
        return [colegioProfesionalInstance: colegioProfesionalInstance]
    }

    def save = {
        def colegioProfesionalInstance = new ColegioProfesional(params)
		//def colegioProfesionalInstance = colegioProfesionalService.showObj(new Integer(params.id))
		guardar(colegioProfesionalInstance)
		
    }

    def show = {
		def colegioProfesionalInstance = colegioProfesionalService.showObj(new Integer(params.id))
		
        //def colegioProfesionalInstance = ColegioProfesional.get(params.id)
        if (!colegioProfesionalInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'colegioProfesional.label', default: 'ColegioProfesional'), params.id])}"
            redirect(action: "list")
        }
        else {
            [colegioProfesionalInstance: colegioProfesionalInstance]
        }
    }

    def edit = {
        //def colegioProfesionalInstance = ColegioProfesional.get(params.id)
		def colegioProfesionalInstance = colegioProfesionalService.showObj(new Integer(params.id))
		
        if (!colegioProfesionalInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'colegioProfesional.label', default: 'ColegioProfesional'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [colegioProfesionalInstance: colegioProfesionalInstance]
        }
    }

    def update = {
        //def colegioProfesionalInstance = ColegioProfesional.get(params.id)
		def colegioProfesionalInstance = colegioProfesionalService.showObj(new Integer(params.id))
		
        if (colegioProfesionalInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (colegioProfesionalInstance.version > version) {
                    
                    colegioProfesionalInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'colegioProfesional.label', default: 'ColegioProfesional')] as Object[], "Another user has updated this ColegioProfesional while you were editing")
                    render(view: "edit", model: [colegioProfesionalInstance: colegioProfesionalInstance])
                    return
                }
            }
            colegioProfesionalInstance.properties = params
            if (!colegioProfesionalInstance.hasErrors() && colegioProfesionalService.saveObj(colegioProfesionalInstance)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'colegioProfesional.label', default: 'ColegioProfesional'), colegioProfesionalInstance.id])}"
                redirect(action: "show", id: colegioProfesionalInstance.id)
            }
            else {
                render(view: "edit", model: [colegioProfesionalInstance: colegioProfesionalInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'colegioProfesional.label', default: 'ColegioProfesional'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        //def colegioProfesionalInstance = ColegioProfesional.get(params.id)
		def colegioProfesionalInstance = colegioProfesionalService.showObj(new Integer(params.id))
		
        if (colegioProfesionalInstance) {
            try {
                //colegioProfesionalInstance.delete(flush: true)
				colegioProfesionalService.deleteObj(colegioProfesionalInstance)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'colegioProfesional.label', default: 'ColegioProfesional'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'colegioProfesional.label', default: 'ColegioProfesional'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'colegioProfesional.label', default: 'ColegioProfesional'), params.id])}"
            redirect(action: "list")
        }
    }
	
	public guardar(ColegioProfesional instance) {
		colegioProfesionalService.saveObj(instance)


		if (!instance.hasErrors() && instance != null) {
			flash.message = "${message(code: 'default.created.message', args: [message(code: 'area.label', default: 'Area'), instance.id])}"
			redirect(action: "show", id: instance.id)
		}
		else {
			render(view: "create", model: [areaInstance: instance])
		}
	}
	
	def generarColegiosProfesionales = {
		colegioProfesionalService.generarColegios()
	}
}
