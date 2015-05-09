package monotributo

class VehiculoController {
	def vehiculoService
	
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [vehiculoInstanceList: Vehiculo.list(params), vehiculoInstanceTotal: Vehiculo.count()]
    }

	def list2 = {
		params.max = Math.min(params.max ? params.int('max') : 10, 100)
		[vehiculoInstanceList: Vehiculo.list(params), vehiculoInstanceTotal: Vehiculo.count()]
	}

	def listaVehiculosDeMonotributista = {
		List<Vehiculo> lista = new ArrayList()
		if((session["monotributista"] != "null")&&(session["monotributista"] != null)){
			def idMonotributista = session["monotributista"]
			Long idMotributista = new Long(idMonotributista)
			
			lista = vehiculoService.buscarVehiculosDeUnMonotributista(idMotributista)
			
		}
		
		render(template:"/vehiculo/listaVehiculos", model:[vehiculoInstanceList: lista, vehiculoInstanceTotal: lista.size()])
		
	}

    def create = {
        def vehiculoInstance = new Vehiculo()
        vehiculoInstance.properties = params
        return [vehiculoInstance: vehiculoInstance]
    }

	def create2 = {
		def vehiculoInstance = new Vehiculo()
		vehiculoInstance.properties = params
		return [vehiculoInstance: vehiculoInstance]
	}

	def save = {
        def vehiculoInstance = new Vehiculo(params)
		
		guardar(vehiculoInstance)
    }

	def save2 = {
		def vehiculoInstance = new Vehiculo(params)
		
		guardar2(vehiculoInstance)
	}

    def show = {
        //def vehiculoInstance = Vehiculo.get(params.id)
		def vehiculoInstance = vehiculoService.showObj(new Integer(params.id))
		
        if (!vehiculoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), params.id])}"
            redirect(action: "list")
        }
        else {
            [vehiculoInstance: vehiculoInstance]
        }
    }

	def show2 = {
		def vehiculoInstance = vehiculoService.showObj(new Integer(params.id))
		
		if (!vehiculoInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), params.id])}"
			redirect(action: "list2")
		}
		else {
			[vehiculoInstance: vehiculoInstance]
		}
	}

    def edit = {
        //def vehiculoInstance = Vehiculo.get(params.id)
		def vehiculoInstance = vehiculoService.showObj(new Integer(params.id))
		
        if (!vehiculoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [vehiculoInstance: vehiculoInstance]
        }
    }

	def edit2 = {
		def vehiculoInstance = vehiculoService.showObj(new Integer(params.id))
		
		if (!vehiculoInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), params.id])}"
			redirect(action: "list2")
		}
		else {
			return [vehiculoInstance: vehiculoInstance]
		}
	}

	    def update = {
        //def vehiculoInstance = Vehiculo.get(params.id)
		def vehiculoInstance = vehiculoService.showObj(new Integer(params.id))
		
        if (vehiculoInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (vehiculoInstance.version > version) {
                    
                    vehiculoInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'vehiculo.label', default: 'Vehiculo')] as Object[], "Another user has updated this Vehiculo while you were editing")
                    render(view: "edit", model: [vehiculoInstance: vehiculoInstance])
                    return
                }
            }
            vehiculoInstance.properties = params
            if (!vehiculoInstance.hasErrors() && vehiculoService.saveObj(vehiculoInstance)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), vehiculoInstance.id])}"
                redirect(action: "show", id: vehiculoInstance.id)
            }
            else {
                render(view: "edit", model: [vehiculoInstance: vehiculoInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), params.id])}"
            redirect(action: "list")
        }
    }

		def update2 = {
			def vehiculoInstance = vehiculoService.showObj(new Integer(params.id))
			
			if (vehiculoInstance) {
				if (params.version) {
					def version = params.version.toLong()
					if (vehiculoInstance.version > version) {
						
						vehiculoInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'vehiculo.label', default: 'Vehiculo')] as Object[], "Another user has updated this Vehiculo while you were editing")
						render(view: "edit2", model: [vehiculoInstance: vehiculoInstance])
						return
					}
				}
				vehiculoInstance.properties = params
				if (!vehiculoInstance.hasErrors() && vehiculoService.saveObj(vehiculoInstance,session.monotributista.id.intValue())) {
					flash.message = "${message(code: 'default.updated.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), vehiculoInstance.id])}"
					redirect(action: "list2", id: vehiculoInstance.id)
				}
				else {
					render(view: "edit2", model: [vehiculoInstance: vehiculoInstance])
				}
			}
			else {
				flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), params.id])}"
				redirect(action: "list2")
			}
		}
	
    def delete = {
		def vehiculoInstance = vehiculoService.showObj(new Integer(params.id))
        if (vehiculoInstance) {
            try {
                vehiculoService.deleteObj(vehiculoInstance)

                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), params.id])}"
            redirect(action: "list")
        }
    }

	def delete2 = {
		def vehiculoInstance = vehiculoService.showObj(new Integer(params.id))
		if (vehiculoInstance) {
			try {
				vehiculoService.deleteObj(vehiculoInstance,session.monotributista.id.intValue())

				flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), params.id])}"
				redirect(action: "list2")
			}
			catch (org.springframework.dao.DataIntegrityViolationException e) {
				flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), params.id])}"
				redirect(action: "show2", id: params.id)
			}
		}
		else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), params.id])}"
			redirect(action: "list2")
		}
	}

	public guardar(Vehiculo instance) {
		vehiculoService.saveObj(instance)


		if (!instance.hasErrors() && instance != null) {
			flash.message = "${message(code: 'default.created.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), instance.id])}"
			redirect(action: "show", id: instance.id)
		}
		else {
			render(view: "create", model: [vehiculoInstance: instance])
		}
	}

	public guardar2(Vehiculo instance) {
		vehiculoService.saveObj(instance,session.monotributista.id.intValue())


		if (!instance.hasErrors() && instance != null) {
			flash.message = "${message(code: 'default.created.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), instance.id])}"
			redirect(action: "list2", id: instance.id)
		}
		else {
			render(view: "create2", model: [vehiculoInstance: instance])
		}
	}

}
