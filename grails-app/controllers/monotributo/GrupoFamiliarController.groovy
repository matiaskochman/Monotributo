package monotributo

class GrupoFamiliarController {
	def archivoService
	def grupoFamiliarService
	def monotributistaService
	
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [grupoFamiliarInstanceList: GrupoFamiliar.list(params), grupoFamiliarInstanceTotal: GrupoFamiliar.count()]
    }

	def list2 = {
		params.max = Math.min(params.max ? params.int('max') : 10, 100)
		[grupoFamiliarInstanceList: GrupoFamiliar.list(params), grupoFamiliarInstanceTotal: GrupoFamiliar.count()]
	}
	def listaGruposFamiliaresDeMonotributista = {
		List<GrupoFamiliar> lista = new ArrayList()
		if((session["monotributista"] != "null")&&(session["monotributista"] != null)){
			def idMonotributista = session["monotributista"]
			Long idMotributista = new Long(idMonotributista)
			
			lista = grupoFamiliarService.buscarGruposFamiliaresDeUnMonotributista(idMotributista)
			
		}
		
		render(template:"/grupoFamiliar/listaGrupoFamiliar", model:[grupoFamiliarInstanceList: lista, grupoFamiliarInstanceTotal: lista.size()])
		
	}

	
    def create = {
        def grupoFamiliarInstance = new GrupoFamiliar()
        grupoFamiliarInstance.properties = params
        return [grupoFamiliarInstance: grupoFamiliarInstance]
    }

	def create2 = {
		def grupoFamiliarInstance = new GrupoFamiliar()
		grupoFamiliarInstance.properties = params
		return [grupoFamiliarInstance: grupoFamiliarInstance]
	}

    def save = {
        def grupoFamiliarInstance = new GrupoFamiliar()
		
		def archivo = new Archivo();
		archivo.properties = params['myFile']
		archivo = archivoService.saveObj(archivo);
		
		grupoFamiliarInstance.archivoAdjunto = archivo
		grupoFamiliarInstance.nombre = params['nombre']
		grupoFamiliarInstance.apellido = params['apellido']
		grupoFamiliarInstance.parentesco = params['parentesco']
		grupoFamiliarInstance.tipoDeDocumento = params['tipoDeDocumento']
		grupoFamiliarInstance.numeroDeDocumento =params['numeroDeDocumento']

		guardar(grupoFamiliarInstance)
		
    }

	def save2 = {
		def grupoFamiliarInstance = new GrupoFamiliar()
		
		if(session.monotributista == null){
			flash.message = "primero tiene que crear un monotributista"
			render(template:"/grupoFamiliar/createGrupoFamiliarForm", model:[grupoFamiliarInstance: grupoFamiliarInstance])
		}else{
		
			def archivo = new Archivo();
			archivo.properties = params['myFile']
			//archivo = archivoService.saveObj(archivo);
			if(archivo.myFile != null){
				grupoFamiliarInstance.archivoAdjunto = archivo
			}
			grupoFamiliarInstance.nombre = params['nombre']
			grupoFamiliarInstance.apellido = params['apellido']
			grupoFamiliarInstance.parentesco = params['parentesco']
			grupoFamiliarInstance.tipoDeDocumento = params['tipoDeDocumento']
			grupoFamiliarInstance.numeroDeDocumento =params['numeroDeDocumento']
	
			//grupoFamiliarService.saveObj(grupoFamiliarInstance)
			Monotributista monotributista = session.monotributista
			def mono = monotributistaService.showObj(monotributista.id.intValue())
			
			mono.listaGrupoFamiliar.add(grupoFamiliarInstance)
			//monotributistaService.saveObj(mono)
			grupoFamiliarInstance.monotributista = mono
			guardar2(grupoFamiliarInstance,mono,archivo)
		}
		
	}

    def show = {
        //def grupoFamiliarInstance = GrupoFamiliar.get(params.id)
		
		def grupoFamiliarInstance = grupoFamiliarService.showObj(new Integer(params.id))
        if (!grupoFamiliarInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar'), params.id])}"
            redirect(action: "list")
        }
        else {
            [grupoFamiliarInstance: grupoFamiliarInstance]
        }
    }

	def show2 = {
		def grupoFamiliarInstance = grupoFamiliarService.showObj(new Integer(params.id))
		if (!grupoFamiliarInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar'), params.id])}"
			redirect(action: "list2")
		}
		else {
			[grupoFamiliarInstance: grupoFamiliarInstance]
		}
	}

    def edit = {
		def grupoFamiliarInstance = grupoFamiliarService.showObj(new Integer(params.id))
        if (!grupoFamiliarInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [grupoFamiliarInstance: grupoFamiliarInstance]
        }
    }

	def edit2 = {
		def grupoFamiliarInstance = grupoFamiliarService.showObj(new Integer(params.id))
		if (!grupoFamiliarInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar'), params.id])}"
			redirect(action: "list2")
		}
		else {
			return [grupoFamiliarInstance: grupoFamiliarInstance]
		}
	}

    def update = {
		def grupoFamiliarInstance = grupoFamiliarService.showObj(new Integer(params.id))
        if (grupoFamiliarInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (grupoFamiliarInstance.version > version) {
                    
                    grupoFamiliarInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar')] as Object[], "Another user has updated this GrupoFamiliar while you were editing")
                    render(view: "edit", model: [grupoFamiliarInstance: grupoFamiliarInstance])
                    return
                }
            }
            grupoFamiliarInstance.properties = params
            if (!grupoFamiliarInstance.hasErrors() && grupoFamiliarService.saveObj(instance)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar'), grupoFamiliarInstance.id])}"
                redirect(action: "show", id: grupoFamiliarInstance.id)
            }
            else {
                render(view: "edit", model: [grupoFamiliarInstance: grupoFamiliarInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar'), params.id])}"
            redirect(action: "list")
        }
    }

	def update2 = {
		def grupoFamiliarInstance = grupoFamiliarService.showObj(new Integer(params.id))
		def archivo = new Archivo();
		archivo.properties = params['myFile']
		grupoFamiliarInstance.archivoAdjunto = archivo
		
		if (grupoFamiliarInstance) {
			if (params.version) {
				def version = params.version.toLong()
				if (grupoFamiliarInstance.version > version) {
					
					grupoFamiliarInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar')] as Object[], "Another user has updated this GrupoFamiliar while you were editing")
					render(view: "edit2", model: [grupoFamiliarInstance: grupoFamiliarInstance])
					return
				}
			}
			grupoFamiliarInstance.properties = params
			if (!grupoFamiliarInstance.hasErrors() && grupoFamiliarService.updateObj(grupoFamiliarInstance)) {
				flash.message = "${message(code: 'default.updated.message', args: [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar'), grupoFamiliarInstance.id])}"
				redirect(action: "list2", id: grupoFamiliarInstance.id)
			}
			else {
				render(view: "edit2", model: [grupoFamiliarInstance: grupoFamiliarInstance])
			}
		}
		else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar'), params.id])}"
			redirect(action: "list2")
		}
	}

	
    def delete = {
		def grupoFamiliarInstance = grupoFamiliarService.showObj(new Integer(params.id))
        if (grupoFamiliarInstance) {
            try {
                grupoFamiliarService.deleteObj(grupoFamiliarInstance)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar'), params.id])}"
            redirect(action: "list")
        }
    }

	def delete2 = {
		def grupoFamiliarInstance = grupoFamiliarService.showObj(new Integer(params.id))
		if (grupoFamiliarInstance) {
			try {
				//grupoFamiliarService.deleteObj(grupoFamiliarInstance)
				grupoFamiliarService.deleteObj(grupoFamiliarInstance,session["monotributista"])
				flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar'), params.id])}"
				redirect(action: "list2")
			}
			catch (org.springframework.dao.DataIntegrityViolationException e) {
				flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar'), params.id])}"
				redirect(action: "show2", id: params.id)
			}
		}
		else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar'), params.id])}"
			redirect(action: "list2")
		}
	}

	public guardar(GrupoFamiliar instance) {
		grupoFamiliarService.saveObj(instance)


		if (!instance.hasErrors() && instance != null) {
			flash.message = "${message(code: 'default.created.message', args: [message(code: 'grupoFamiliar.label', default: 'Grupo Familiar'), instance.id])}"
			redirect(action: "show", id: instance.id)
		}
		else {
			render(view: "create", model: [grupoFamiliarInstance: instance])
		}
	}
	public guardar2(GrupoFamiliar instance,Monotributista mono,Archivo archivo) {
		grupoFamiliarService.saveObj(instance,mono,archivo)
		if (!instance.hasErrors() && instance != null) {
			//monotributistaService.saveObj(mono)
			if(instance.id == null){
				flash.message = "numero de DNI existente"
				//render(template:"/grupoFamiliar/createGrupoFamiliarForm", model:[grupoFamiliarInstance: instance])
				redirect(action:"create2")
			}else{
				flash.message = "Grupo Familiar con id ${instance.id} guardado con exito"
				//render(template:"/grupoFamiliar/createGrupoFamiliarForm", model:[grupoFamiliarInstance: instance])
				redirect(action:"list2")
			}
		}
		else {
			instance = new GrupoFamiliar()
			//render(view: "create", model: [domicilioInstance: instance])
			//render(template:"/grupoFamiliar/createGrupoFamiliarForm", model:[grupoFamiliarInstance: instance])
			flash.message = "hubo problemas"
			
			redirect(action:"list2")
		}
	}

}
