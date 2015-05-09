package monotributo

class TituloProfesionalController {
	def tituloProfesionalService
	def colegioProfesionalService
	
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [tituloProfesionalInstanceList: TituloProfesional.list(params), tituloProfesionalInstanceTotal: TituloProfesional.count()]
    }

	def list2 = {
		params.max = Math.min(params.max ? params.int('max') : 10, 100)
		[tituloProfesionalInstanceList: TituloProfesional.list(params), tituloProfesionalInstanceTotal: TituloProfesional.count()]
	}

	def listaTituloProfesionalDeMonotributista = {
		List<TituloProfesional> lista = new ArrayList()
		if((session["monotributista"] != "null")&&(session["monotributista"] != null)){
			def idMonotributista = session["monotributista"]
			Long idMotributista = new Long(idMonotributista)
			
			lista = tituloProfesionalService.buscarTituloProfesionalesDeUnMonotributista(idMotributista)
			
		}
		
		render(template:"/tituloProfesional/listaTitulosProfesionales", model:[tituloProfesionalInstanceList: lista, tituloProfesionalInstanceTotal: lista.size()])
		
	}

    def create = {
        def tituloProfesionalInstance = new TituloProfesional()
        tituloProfesionalInstance.properties = params
        return [tituloProfesionalInstance: tituloProfesionalInstance]
    }

	def create2 = {
		def tituloProfesionalInstance = new TituloProfesional()
		tituloProfesionalInstance.properties = params
		return [tituloProfesionalInstance: tituloProfesionalInstance]
	}

    def save = {
        def tituloProfesionalInstance = new TituloProfesional(params)
		
		def idColegioProf = params['idColegioProfesional']
		def colegioProf = colegioProfesionalService.showObj(new Integer(idColegioProf))
		
		tituloProfesionalInstance.colegioProfesional = colegioProf
		
		guardar(tituloProfesionalInstance)
    }

	def save2 = {
		def tituloProfesionalInstance = new TituloProfesional(params)
		
		def idColegioProf = params['idColegioProfesional']
		def colegioProf = colegioProfesionalService.showObj(new Integer(idColegioProf))
		
		tituloProfesionalInstance.colegioProfesional = colegioProf
		
		
		guardar2(tituloProfesionalInstance)
	}

    def show = {
        //def tituloProfesionalInstance = TituloProfesional.get(params.id)
		def tituloProfesionalInstance = tituloProfesionalService.showObj(new Integer(params.id))
		
        if (!tituloProfesionalInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tituloProfesional.label', default: 'TituloProfesional'), params.id])}"
            redirect(action: "list")
        }
        else {
            [tituloProfesionalInstance: tituloProfesionalInstance]
        }
    }

	def show2 = {
		//def tituloProfesionalInstance = TituloProfesional.get(params.id)
		def tituloProfesionalInstance = tituloProfesionalService.showObj(new Integer(params.id))
		
		if (!tituloProfesionalInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tituloProfesional.label', default: 'TituloProfesional'), params.id])}"
			redirect(action: "list2")
		}
		else {
			[tituloProfesionalInstance: tituloProfesionalInstance]
		}
	}

    def edit = {
        //def tituloProfesionalInstance = TituloProfesional.get(params.id)
		def instance = tituloProfesionalService.showObj(new Integer(params.id))
        if (!tituloProfesionalInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tituloProfesional.label', default: 'TituloProfesional'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [tituloProfesionalInstance: tituloProfesionalInstance]
        }
    }

	def edit2 = {
		//def tituloProfesionalInstance = TituloProfesional.get(params.id)
		def tituloProfesionalInstance = tituloProfesionalService.showObj(new Integer(params.id))
		if (!tituloProfesionalInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tituloProfesional.label', default: 'TituloProfesional'), params.id])}"
			redirect(action: "list2")
		}
		else {
			return [tituloProfesionalInstance: tituloProfesionalInstance]
		}
	}

    def update = {
        //def tituloProfesionalInstance = TituloProfesional.get(params.id)
		def tituloProfesionalInstance = tituloProfesionalService.showObj(new Integer(params.id))
        if (tituloProfesionalInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (tituloProfesionalInstance.version > version) {
                    
                    tituloProfesionalInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'tituloProfesional.label', default: 'TituloProfesional')] as Object[], "Another user has updated this TituloProfesional while you were editing")
                    render(view: "edit", model: [tituloProfesionalInstance: tituloProfesionalInstance])
                    return
                }
            }
            tituloProfesionalInstance.properties = params
            if (!tituloProfesionalInstance.hasErrors() && tituloProfesionalService.saveObj(tituloProfesionalInstance)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'tituloProfesional.label', default: 'TituloProfesional'), tituloProfesionalInstance.id])}"
                redirect(action: "show", id: tituloProfesionalInstance.id)
            }
            else {
                render(view: "edit", model: [tituloProfesionalInstance: tituloProfesionalInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tituloProfesional.label', default: 'TituloProfesional'), params.id])}"
            redirect(action: "list")
        }
    }

	def update2 = {
		//def tituloProfesionalInstance = TituloProfesional.get(params.id)
		def tituloProfesionalInstance = tituloProfesionalService.showObj(new Integer(params.id))
		
		if (tituloProfesionalInstance) {
			if (params.version) {
				def version = params.version.toLong()
				if (tituloProfesionalInstance.version > version) {
					
					tituloProfesionalInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'tituloProfesional.label', default: 'TituloProfesional')] as Object[], "Another user has updated this TituloProfesional while you were editing")
					render(view: "edit", model: [tituloProfesionalInstance: tituloProfesionalInstance])
					return
				}
			}
			tituloProfesionalInstance.properties = params
			if(params.idColegioProfesional!="null"){
				def colegioProfesional = colegioProfesionalService.showObj(new Integer(params.idColegioProfesional))
				tituloProfesionalInstance.setColegioProfesional(colegioProfesional)
			}else{
				tituloProfesionalInstance.setColegioProfesional(null)
			
			}
			if (!tituloProfesionalInstance.hasErrors() && tituloProfesionalService.saveObj(tituloProfesionalInstance,session.monotributista.id.intValue())) {
				flash.message = "${message(code: 'default.updated.message', args: [message(code: 'tituloProfesional.label', default: 'TituloProfesional'), tituloProfesionalInstance.id])}"
				redirect(action: "list2")
			}
			else {
				render(view: "edit2", model: [tituloProfesionalInstance: tituloProfesionalInstance])
			}
		}
		else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tituloProfesional.label', default: 'TituloProfesional'), params.id])}"
			redirect(action: "list2")
		}
	}

    def delete = {
        //def tituloProfesionalInstance = TituloProfesional.get(params.id)
		def tituloProfesionalInstance = tituloProfesionalService.showObj(new Integer(params.id))
        if (tituloProfesionalInstance) {
            try {
                //tituloProfesionalInstance.delete(flush: true)
				tituloProfesionalService.deleteObj(tituloProfesionalInstance)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'tituloProfesional.label', default: 'TituloProfesional'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'tituloProfesional.label', default: 'TituloProfesional'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tituloProfesional.label', default: 'TituloProfesional'), params.id])}"
            redirect(action: "list")
        }
    }

	def delete2 = {
		def tituloProfesionalInstance = tituloProfesionalService.showObj(new Integer(params.id))
		if (tituloProfesionalInstance) {
			try {
				//tituloProfesionalInstance.delete(flush: true)
				tituloProfesionalService.deleteObj(tituloProfesionalInstance,session.monotributista.id.intValue())
				flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'tituloProfesional.label', default: 'TituloProfesional'), params.id])}"
				redirect(action: "list2")
			}
			catch (org.springframework.dao.DataIntegrityViolationException e) {
				flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'tituloProfesional.label', default: 'TituloProfesional'), params.id])}"
				redirect(action: "show2", id: params.id)
			}
		}
		else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tituloProfesional.label', default: 'TituloProfesional'), params.id])}"
			redirect(action: "list2")
		}
	}

	public guardar(TituloProfesional instance) {
		tituloProfesionalService.saveObj(instance)


		if (!instance.hasErrors() && instance != null) {
			flash.message = "${message(code: 'default.created.message', args: [message(code: 'area.label', default: 'Area'), instance.id])}"
			redirect(action: "show", id: instance.id)
		}
		else {
			render(view: "create", model: [areaInstance: instance])
		}
	}

	public guardar2(TituloProfesional instance) {
		
		
		tituloProfesionalService.saveObj(instance,session.monotributista.id.intValue())

		if (!instance.hasErrors() && instance != null) {
			flash.message = "${message(code: 'default.created.message', args: [message(code: 'area.label', default: 'Area'), instance.id])}"
			redirect(action: "list2")
		}
		else {
			render(view: "create", model: [areaInstance: instance])
		}
	}

}
