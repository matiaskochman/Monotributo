package monotributo

class DetalleContratoAlquilerController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [detalleContratoAlquilerInstanceList: DetalleContratoAlquiler.list(params), detalleContratoAlquilerInstanceTotal: DetalleContratoAlquiler.count()]
    }

    def create = {
        def detalleContratoAlquilerInstance = new DetalleContratoAlquiler()
        detalleContratoAlquilerInstance.properties = params
        return [detalleContratoAlquilerInstance: detalleContratoAlquilerInstance]
    }

    def save = {
        def detalleContratoAlquilerInstance = new DetalleContratoAlquiler(params)
        if (detalleContratoAlquilerInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'detalleContratoAlquiler.label', default: 'DetalleContratoAlquiler'), detalleContratoAlquilerInstance.id])}"
            redirect(action: "show", id: detalleContratoAlquilerInstance.id)
        }
        else {
            render(view: "create", model: [detalleContratoAlquilerInstance: detalleContratoAlquilerInstance])
        }
    }

    def show = {
        def detalleContratoAlquilerInstance = DetalleContratoAlquiler.get(params.id)
        if (!detalleContratoAlquilerInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'detalleContratoAlquiler.label', default: 'DetalleContratoAlquiler'), params.id])}"
            redirect(action: "list")
        }
        else {
            [detalleContratoAlquilerInstance: detalleContratoAlquilerInstance]
        }
    }

    def edit = {
        def detalleContratoAlquilerInstance = DetalleContratoAlquiler.get(params.id)
        if (!detalleContratoAlquilerInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'detalleContratoAlquiler.label', default: 'DetalleContratoAlquiler'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [detalleContratoAlquilerInstance: detalleContratoAlquilerInstance]
        }
    }

    def update = {
        def detalleContratoAlquilerInstance = DetalleContratoAlquiler.get(params.id)
        if (detalleContratoAlquilerInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (detalleContratoAlquilerInstance.version > version) {
                    
                    detalleContratoAlquilerInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'detalleContratoAlquiler.label', default: 'DetalleContratoAlquiler')] as Object[], "Another user has updated this DetalleContratoAlquiler while you were editing")
                    render(view: "edit", model: [detalleContratoAlquilerInstance: detalleContratoAlquilerInstance])
                    return
                }
            }
            detalleContratoAlquilerInstance.properties = params
            if (!detalleContratoAlquilerInstance.hasErrors() && detalleContratoAlquilerInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'detalleContratoAlquiler.label', default: 'DetalleContratoAlquiler'), detalleContratoAlquilerInstance.id])}"
                redirect(action: "show", id: detalleContratoAlquilerInstance.id)
            }
            else {
                render(view: "edit", model: [detalleContratoAlquilerInstance: detalleContratoAlquilerInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'detalleContratoAlquiler.label', default: 'DetalleContratoAlquiler'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def detalleContratoAlquilerInstance = DetalleContratoAlquiler.get(params.id)
        if (detalleContratoAlquilerInstance) {
            try {
                detalleContratoAlquilerInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'detalleContratoAlquiler.label', default: 'DetalleContratoAlquiler'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'detalleContratoAlquiler.label', default: 'DetalleContratoAlquiler'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'detalleContratoAlquiler.label', default: 'DetalleContratoAlquiler'), params.id])}"
            redirect(action: "list")
        }
    }
}
