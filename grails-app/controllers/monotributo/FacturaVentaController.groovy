package monotributo

class FacturaVentaController {

	def facturaVentaService 
	
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [facturaVentaInstanceList: FacturaVenta.list(params), facturaVentaInstanceTotal: FacturaVenta.count()]
    }

    def create = {
        def facturaVentaInstance = new FacturaVenta()
        facturaVentaInstance.properties = params
        return [facturaVentaInstance: facturaVentaInstance]
    }

    def save = {
		
		
        def facturaVentaInstance = new FacturaVenta(params)
        if (facturaVentaInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'facturaVenta.label', default: 'FacturaVenta'), facturaVentaInstance.id])}"
            redirect(action: "show", id: facturaVentaInstance.id)
        }
        else {
            render(view: "create", model: [facturaVentaInstance: facturaVentaInstance])
        }
    }

    def show = {
        def facturaVentaInstance = FacturaVenta.get(params.id)
        if (!facturaVentaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'facturaVenta.label', default: 'FacturaVenta'), params.id])}"
            redirect(action: "list")
        }
        else {
            [facturaVentaInstance: facturaVentaInstance]
        }
    }

    def edit = {
        def facturaVentaInstance = FacturaVenta.get(params.id)
        if (!facturaVentaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'facturaVenta.label', default: 'FacturaVenta'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [facturaVentaInstance: facturaVentaInstance]
        }
    }

    def update = {
        def facturaVentaInstance = FacturaVenta.get(params.id)
        if (facturaVentaInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (facturaVentaInstance.version > version) {
                    
                    facturaVentaInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'facturaVenta.label', default: 'FacturaVenta')] as Object[], "Another user has updated this FacturaVenta while you were editing")
                    render(view: "edit", model: [facturaVentaInstance: facturaVentaInstance])
                    return
                }
            }
            facturaVentaInstance.properties = params
            if (!facturaVentaInstance.hasErrors() && facturaVentaInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'facturaVenta.label', default: 'FacturaVenta'), facturaVentaInstance.id])}"
                redirect(action: "show", id: facturaVentaInstance.id)
            }
            else {
                render(view: "edit", model: [facturaVentaInstance: facturaVentaInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'facturaVenta.label', default: 'FacturaVenta'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def facturaVentaInstance = FacturaVenta.get(params.id)
        if (facturaVentaInstance) {
            try {
                facturaVentaInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'facturaVenta.label', default: 'FacturaVenta'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'facturaVenta.label', default: 'FacturaVenta'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'facturaVenta.label', default: 'FacturaVenta'), params.id])}"
            redirect(action: "list")
        }
    }
}
