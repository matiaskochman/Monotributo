package monotributo

class CategoriaController {
	def categoriaService
	
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
		
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
		params.max = 20
        [categoriaInstanceList: Categoria.list(params), categoriaInstanceTotal: Categoria.count()]
    }

    def create = {
        def categoriaInstance = new Categoria()
        categoriaInstance.properties = params
        return [categoriaInstance: categoriaInstance]
    }

	/**
	 * usa el servicio
	 */
    def save = {
        def categoriaInstance = new Categoria(params)
		
		guardarCategoria(categoriaInstance)
    }

	
	public guardarCategoria(Categoria categoriaInstance) {
		categoriaService.saveObj(categoriaInstance)


		if (!categoriaInstance.hasErrors() && categoriaInstance != null) {
			flash.message = "${message(code: 'default.created.message', args: [message(code: 'categoria.label', default: 'Categoria'), categoriaInstance.id])}"
			redirect(action: "show", id: categoriaInstance.id)
		}
		else {
			render(view: "create", model: [categoriaInstance: categoriaInstance])
		}
	}

	/**
	 * lo uso para el test solamente
	 * @param categoria
	 * @return
	 */
	public Categoria save(Categoria categoria){
		
	}
    def show = {
		
		def categoriaInstance = categoriaService.showObj(new Integer(params.id))
		
        if (!categoriaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'categoria.label', default: 'Categoria'), params.id])}"
            redirect(action: "list")
        }
        else {
            [categoriaInstance: categoriaInstance]
        }
    }

    def edit = {
		def categoriaInstance = categoriaService.showObj(new Integer(params.id))
        if (!categoriaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'categoria.label', default: 'Categoria'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [categoriaInstance: categoriaInstance]
        }
    }

    def update = {
		def categoriaInstance = categoriaService.showObj(new Integer(params.id))
        if (categoriaInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (categoriaInstance.version > version) {
                    
                    categoriaInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'categoria.label', default: 'Categoria')] as Object[], "Another user has updated this Categoria while you were editing")
                    render(view: "edit", model: [categoriaInstance: categoriaInstance])
                    return
                }
            }
            categoriaInstance.properties = params
            if (!categoriaInstance.hasErrors() && categoriaService.saveObj(categoriaInstance)!=null) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'categoria.label', default: 'Categoria'), categoriaInstance.id])}"
                redirect(action: "show", id: categoriaInstance.id)
            }
            else {
                render(view: "edit", model: [categoriaInstance: categoriaInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'categoria.label', default: 'Categoria'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
		def categoriaInstance = categoriaService.showObj(new Integer(params.id))
        if (categoriaInstance) {
            try {
				categoriaService.deleteObj(categoriaInstance)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'categoria.label', default: 'Categoria'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'categoria.label', default: 'Categoria'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'categoria.label', default: 'Categoria'), params.id])}"
            redirect(action: "list")
        }
    }
	
	def generateData = {
		categoriaService.generateData()
		redirect(action:"list")
	}
}
