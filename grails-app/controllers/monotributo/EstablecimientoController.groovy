package monotributo

class EstablecimientoController {
	def establecimientoService
	def areaService
	def monotributistaService
	
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [establecimientoInstanceList: Establecimiento.list(params), establecimientoInstanceTotal: Establecimiento.count()]
    }

	def list2 = {
		params.max = Math.min(params.max ? params.int('max') : 10, 100)
		[establecimientoInstanceList: Establecimiento.list(params), establecimientoInstanceTotal: Establecimiento.count()]
	}

	def listaEstablecimientosDeMonotributista = {
		List<Establecimiento> lista = new ArrayList()
		if((session["monotributista"] != "null")&&(session["monotributista"] != null)){
			def idMonotributista = session["monotributista"]
			Long idMotributista = new Long(idMonotributista)
			
			lista = establecimientoService.buscarEstablecimientosDeUnMonotributista(idMotributista)
			
		}
		
		render(template:"/establecimiento/listaEstablecimiento", model:[establecimientoInstanceList: lista, establecimientoInstanceTotal: lista.size()])
		
	}

    def create = {
        def establecimientoInstance = new Establecimiento()
        establecimientoInstance.properties = params
        return [establecimientoInstance: establecimientoInstance]
    }

	def create2 = {
		def establecimientoInstance = new Establecimiento()
		establecimientoInstance.properties = params
		return [establecimientoInstance: establecimientoInstance]
	}

    def save = {
        def instance = new Establecimiento()
		
		Area provincia = areaService.showObj(new Integer(params.provincia))
		Area partido = areaService.showObj(new Integer(params.partido))

		
		instance.activo = params['activo']
		instance.catastro = params['catastro']
		instance.digito = params['digito']
		instance.partida = params['partida']
		instance.partido = partido
		instance.provincia = provincia
		instance.tipoEstablecimiento = params['tipoEstablecimiento']
		instance.titularDelInmueble = params['titularDelInmueble']
		
		guardar(instance)
    }

	def save2 = {
		def instance = new Establecimiento()
		
		Area provincia = areaService.showObj(new Integer(params.provincia))
		Area partido = areaService.showObj(new Integer(params.partido))

		instance.activo = params['activo']
		instance.catastro = params['catastro']
		instance.digito = params['digito']
		instance.partida = params['partida']
		instance.tipoEstablecimiento = params['tipoEstablecimiento']
		instance.titularDelInmueble = params['titularDelInmueble']
		instance.partido = partido
		instance.provincia = provincia
		
		guardar2(instance)
	}

    def show = {
		def establecimientoInstance = establecimientoService.showObj(new Integer(params.id))
        if (!establecimientoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'establecimiento.label', default: 'Establecimiento'), params.id])}"
            redirect(action: "list")
        }
        else {
            [establecimientoInstance: establecimientoInstance]
        }
    }

	def show2 = {
		def establecimientoInstance = establecimientoService.showObj(new Integer(params.id))
		if (!establecimientoInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'establecimiento.label', default: 'Establecimiento'), params.id])}"
			redirect(action: "list2")
		}
		else {
			[establecimientoInstance: establecimientoInstance]
		}
	}

    def edit = {
		def establecimientoInstance = establecimientoService.showObj(new Integer(params.id))
        if (!establecimientoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'establecimiento.label', default: 'Establecimiento'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [establecimientoInstance: establecimientoInstance]
        }
    }

	def edit2 = {
		def establecimientoInstance = establecimientoService.showObj(new Integer(params.id))
		if (!establecimientoInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'establecimiento.label', default: 'Establecimiento'), params.id])}"
			redirect(action: "list2")
		}
		else {
			return [establecimientoInstance: establecimientoInstance]
		}
	}

    def update = {
		def establecimientoInstance = establecimientoService.showObj(new Integer(params.id))
        if (establecimientoInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (establecimientoInstance.version > version) {
                    
                    establecimientoInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'establecimiento.label', default: 'Establecimiento')] as Object[], "Another user has updated this Establecimiento while you were editing")
                    render(view: "edit", model: [establecimientoInstance: establecimientoInstance])
                    return
                }
            }
            establecimientoInstance.properties = params
            if (!establecimientoInstance.hasErrors() && establecimientoService.saveObj(establecimientoInstance)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'establecimiento.label', default: 'Establecimiento'), establecimientoInstance.id])}"
                redirect(action: "show", id: establecimientoInstance.id)
            }
            else {
                render(view: "edit", model: [establecimientoInstance: establecimientoInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'establecimiento.label', default: 'Establecimiento'), params.id])}"
            redirect(action: "list")
        }
    }

	def update2 = {
		def establecimientoInstance = establecimientoService.showObj(new Integer(params.id))
		if (establecimientoInstance) {
			if (params.version) {
				def version = params.version.toLong()
				if (establecimientoInstance.version > version) {
					
					establecimientoInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'establecimiento.label', default: 'Establecimiento')] as Object[], "Another user has updated this Establecimiento while you were editing")
					render(view: "edit2", model: [establecimientoInstance: establecimientoInstance])
					return
				}
			}
			establecimientoInstance.properties = params
			if (!establecimientoInstance.hasErrors() && establecimientoService.saveObj(establecimientoInstance)) {
				flash.message = "${message(code: 'default.updated.message', args: [message(code: 'establecimiento.label', default: 'Establecimiento'), establecimientoInstance.id])}"
				redirect(action: "list2", id: establecimientoInstance.id)
			}
			else {
				render(view: "edit2", model: [establecimientoInstance: establecimientoInstance])
			}
		}
		else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'establecimiento.label', default: 'Establecimiento'), params.id])}"
			redirect(action: "list2")
		}
	}

	
    def delete = {
		def establecimientoInstance = establecimientoService.showObj(new Integer(params.id))
        if (establecimientoInstance) {
            try {
                establecimientoInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'establecimiento.label', default: 'Establecimiento'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'establecimiento.label', default: 'Establecimiento'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'establecimiento.label', default: 'Establecimiento'), params.id])}"
            redirect(action: "list")
        }
    }
	
	def delete2 = {
		def establecimientoInstance = establecimientoService.showObj(new Integer(params.id))
		if (establecimientoInstance) {
			try {
				//establecimientoInstance.delete(flush: true)
				
				//establecimientoService.deleteObj(establecimientoInstance,params.monotributista.id.intValue())
				establecimientoService.deleteObj(establecimientoInstance,session["monotributista"].intValue())
				flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'establecimiento.label', default: 'Establecimiento'), params.id])}"
				redirect(action: "list2")
			}
			catch (org.springframework.dao.DataIntegrityViolationException e) {
				flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'establecimiento.label', default: 'Establecimiento'), params.id])}"
				redirect(action: "show2", id: params.id)
			}
		}
		else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'establecimiento.label', default: 'Establecimiento'), params.id])}"
			redirect(action: "list")
		}
	}

	public guardar(Establecimiento instance) {
		establecimientoService.saveObj(instance)


		if (!instance.hasErrors() && instance != null) {
			flash.message = "${message(code: 'default.created.message', args: [message(code: 'establecimiento.label', default: 'Establecimiento'), instance.id])}"
			redirect(action: "show", id: instance.id)
		}
		else {
			render(view: "create", model: [establecimientoInstance: instance])
		}
	}

	public guardar2(Establecimiento instance) {
		def monotributista = monotributistaService.showObj(session["monotributista"].intValue())
		//monotributista.listaEstablecimientos.add(instance)
		establecimientoService.saveObj(instance,session["monotributista"].intValue())
		
		if (!instance.hasErrors() && instance.id != null) {
			flash.message = "${message(code: 'default.created.message', args: [message(code: 'establecimiento.label', default: 'Establecimiento'), instance.id])}"
			redirect(action: "list2")
		}
		else {
	
			render(view: "create2", model: [establecimientoInstance: instance])
		}
	}

}
