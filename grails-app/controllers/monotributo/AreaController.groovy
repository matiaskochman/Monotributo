package monotributo

class AreaController {
	def areaService
	
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [areaInstanceList: Area.list(params), areaInstanceTotal: Area.count()]
    }

    def create = {
        def areaInstance = new Area()
        areaInstance.properties = params
        return [areaInstance: areaInstance]
    }

    def save = {
        def areaInstance = new Area(params)
		guardar(areaInstance)

    }

    def show = {
        //def areaInstance = Area.get(params.id)
		def instance = areaService.showObj(new Integer(params.id))
		
        if (!instance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'area.label', default: 'Area'), params.id])}"
            redirect(action: "list")
        }
        else {
            [areaInstance: instance]
        }
    }

    def edit = {
        //def areaInstance = Area.get(params.id)
		def instance = areaService.showObj(new Integer(params.id))
		
        if (!instance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'area.label', default: 'Area'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [areaInstance: instance]
        }
    }

    def update = {
        //def areaInstance = Area.get(params.id)
		def instance = areaService.showObj(new Integer(params.id))
		
        if (instance) {
            if (params.version) {
                def version = params.version.toLong()
                if (instance.version > version) {
                    
                    instance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'area.label', default: 'Area')] as Object[], "Another user has updated this Area while you were editing")
                    render(view: "edit", model: [areaInstance: instance])
                    return
                }
            }
            instance.properties = params
            if (!instance.hasErrors() && instance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'area.label', default: 'Area'), instance.id])}"
                redirect(action: "show", id: instance.id)
            }
            else {
                render(view: "edit", model: [areaInstance: instance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'area.label', default: 'Area'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        //def areaInstance = Area.get(params.id)
		def areaInstance = areaService.showObj(new Integer(params.id))
        if (areaInstance) {
            try {
                areaInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'area.label', default: 'Area'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'area.label', default: 'Area'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'area.label', default: 'Area'), params.id])}"
            redirect(action: "list")
        }
    }
	
	public guardar(Area instance) {
		areaService.saveObj(instance)


		if (!instance.hasErrors() && instance != null) {
			flash.message = "${message(code: 'default.created.message', args: [message(code: 'area.label', default: 'Area'), instance.id])}"
			redirect(action: "show", id: instance.id)
		}
		else {
			render(view: "create", model: [areaInstance: instance])
		}
	}

	public List buscarProvincias(){
		return areaService.buscarProvincias()
	}
	
	def generarAreas = {
		areaService.generarAreas()
		
		redirect(action:"list")
	}
}
