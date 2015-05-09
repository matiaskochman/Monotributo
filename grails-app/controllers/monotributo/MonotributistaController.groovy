package monotributo


class MonotributistaController {
	def monotributistaService
	
	
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	
    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [monotributistaInstanceList: Monotributista.list(params), monotributistaInstanceTotal: Monotributista.count()]
    }
	def list2 = {
		params.max = Math.min(params.max ? params.int('max') : 10, 100)
		//session.monotributista = "null"
		[monotributistaInstanceList: Monotributista.list(params), monotributistaInstanceTotal: Monotributista.count()]
	}

    def create = {
        def monotributistaInstance = new Monotributista()
        monotributistaInstance.properties = params
        return [monotributistaInstance: monotributistaInstance]
    }
	def create2 = {
		def monotributistaInstance = new Monotributista()
		monotributistaInstance.properties = params
		return [monotributistaInstance: monotributistaInstance]
	}

    def save = {
        def monotributistaInstance = new Monotributista(params)
        if (monotributistaInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'monotributista.label', default: 'Monotributista'), monotributistaInstance.id])}"
            redirect(action: "show", id: monotributistaInstance.id)
        }
        else {
            render(view: "create", model: [monotributistaInstance: monotributistaInstance])
        }
    }

	
	def save2 = {
		def monotributistaInstance = new Monotributista(params)
		
		//guardar2(monotributistaInstance)
		
		Monotributista.withTransaction{
			if (monotributistaInstance.save(flush:true)) {
				flash.message = "Monotributista con id ${monotributistaInstance.id} guardado con exito"
			}
			session["monotributista"] = monotributistaInstance
			//render(template:"/monotributista/createMonotributistaForm", model: [monotributistaInstance: monotributistaInstance])
			redirect(action:"list2")
		}

		
		/*
		Monotributista.withTransaction{
			if (monotributistaInstance.save(flush: true)) {
				flash.message = "Monotributista ${monotributistaInstance.id} creado"
					
			}
			render(template:"/monotributista/createMonotributistaForm", model: [monotributistaInstance: monotributistaInstance])
		}*/
	}

    def show = {
        //def monotributistaInstance = Monotributista.get(params.id)
		def monotributistaInstance = monotributistaService.showObj(new Integer(params.id))
		
        if (!monotributistaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'monotributista.label', default: 'Monotributista'), params.id])}"
            redirect(action: "list")
        }
        else {
            [monotributistaInstance: monotributistaInstance]
        }
    }

	def show2 = {
		def monotributistaInstance = monotributistaService.showObj(new Integer(params.id))
		
		if (!monotributistaInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'monotributista.label', default: 'Monotributista'), params.id])}"
			redirect(action: "list2")
		}
		else {
			//en la vista estoy seteando monotributistaInstance.id en la session
			[monotributistaInstance: monotributistaInstance]
		}
	}

    def edit = {
		def monotributistaInstance = monotributistaService.showObj(new Integer(params.id))
		
        if (!monotributistaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'monotributista.label', default: 'Monotributista'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [monotributistaInstance: monotributistaInstance]
        }
    }

	def edit2 = {
		def monotributistaInstance = monotributistaService.showObj(new Integer(params.id))
		
		if (!monotributistaInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'monotributista.label', default: 'Monotributista'), params.id])}"
			redirect(action: "list")
		}
		else {
			return [monotributistaInstance: monotributistaInstance]
		}
	}

    def update = {
        //def monotributistaInstance = Monotributista.get(params.id)
		def monotributistaInstance = monotributistaService.showObj(new Integer(params.id))
		
        if (monotributistaInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (monotributistaInstance.version > version) {
                    
                    monotributistaInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'monotributista.label', default: 'Monotributista')] as Object[], "Another user has updated this Monotributista while you were editing")
                    render(view: "edit", model: [monotributistaInstance: monotributistaInstance])
                    return
                }
            }
            monotributistaInstance.properties = params
            if (!monotributistaInstance.hasErrors() && monotributistaService.saveObj(monotributistaInstance)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'monotributista.label', default: 'Monotributista'), monotributistaInstance.id])}"
                redirect(action: "show", id: monotributistaInstance.id)
            }
            else {
                render(view: "edit", model: [monotributistaInstance: monotributistaInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'monotributista.label', default: 'Monotributista'), params.id])}"
            redirect(action: "list")
        }
    }

	def update2 = {
		def monotributistaInstance = monotributistaService.showObj(new Integer(params.id))
		
		if (monotributistaInstance) {
			if (params.version) {
				def version = params.version.toLong()
				if (monotributistaInstance.version > version) {
					
					monotributistaInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'monotributista.label', default: 'Monotributista')] as Object[], "Another user has updated this Monotributista while you were editing")
					render(template:"/monotributista/editMonotributistaForm", model: [monotributistaInstance: monotributistaInstance])
					return
				}
			}
			monotributistaInstance.properties = params
			if (!monotributistaInstance.hasErrors() && monotributistaService.saveObj(monotributistaInstance)) {
				flash.message = "${message(code: 'default.updated.message', args: [message(code: 'monotributista.label', default: 'Monotributista'), monotributistaInstance.id])}"
				session.monotributista = monotributistaInstance
				redirect(action: "list2")
			}
			else {
				render(view: "edit2", model: [monotributistaInstance: monotributistaInstance])
			}
		}
		else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'monotributista.label', default: 'Monotributista'), params.id])}"
			redirect(action: "list2")
		}
	}

    def delete = {
        //def monotributistaInstance = Monotributista.get(params.id)
		def monotributistaInstance = monotributistaService.showObj(new Integer(params.id))
		
        if (monotributistaInstance) {
            try {
                monotributistaService.deleteObj(monotributistaInstance)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'monotributista.label', default: 'Monotributista'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'monotributista.label', default: 'Monotributista'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'monotributista.label', default: 'Monotributista'), params.id])}"
            redirect(action: "list")
        }
    }

	def delete2 = {
		//def monotributistaInstance = Monotributista.get(params.id)
		def monotributistaInstance = monotributistaService.showObj(new Integer(params.id))
		
		if (monotributistaInstance) {
			try {
				monotributistaService.deleteObj(monotributistaInstance)
				flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'monotributista.label', default: 'Monotributista'), params.id])}"
				redirect(action: "list2")
			}
			catch (org.springframework.dao.DataIntegrityViolationException e) {
				flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'monotributista.label', default: 'Monotributista'), params.id])}"
				redirect(action: "show2", id: params.id)
			}
		}
		else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'monotributista.label', default: 'Monotributista'), params.id])}"
			redirect(action: "list2")
		}
	}

	def guardar(Monotributista instance){
		monotributistaService.saveObj(instance)
		
		if (!instance.hasErrors() && instance != null) {
			flash.message = "${message(code: 'default.created.message', args: [message(code: 'monotributista.label', default: 'Monotributista'), instance.id])}"
			redirect(action: "show", id: instance.id)
		}
		else {
			render(view: "create", model: [monotributistaInstance: instance])
		}
	}
	
	def guardar2(Monotributista instance){
		monotributistaService.saveObj(instance)
		
		if (!instance.hasErrors() && instance != null) {
			flash.message = "Monotributista con id ${instance.id} guardado con exito" 
			//redirect(action: "show", id: instance.id)
		}
		render(template:"/monotributista/createMonotributistaForm", model: [monotributistaInstance: instance])
	}
	def showMonotributistaSession = {
		if((session.monotributista !=null)&&(session.monotributista !="null" )){
			def idMonotributista = session["monotributista"]
			render(idMonotributista.toString())
		}else{
			render ("null");
		}
	}
	

}
