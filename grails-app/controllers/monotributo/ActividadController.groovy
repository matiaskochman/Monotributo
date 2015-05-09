package monotributo

class ActividadController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [actividadInstanceList: Actividad.list(params), actividadInstanceTotal: Actividad.count()]
    }

    def create = {
        def actividadInstance = new Actividad()
        actividadInstance.properties = params
        return [actividadInstance: actividadInstance]
    }

    def save = {
        def actividadInstance = new Actividad(params)
        if (actividadInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'actividad.label', default: 'Actividad'), actividadInstance.id])}"
            redirect(action: "show", id: actividadInstance.id)
        }
        else {
            render(view: "create", model: [actividadInstance: actividadInstance])
        }
    }

    def show = {
        def actividadInstance = Actividad.get(params.id)
        if (!actividadInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'actividad.label', default: 'Actividad'), params.id])}"
            redirect(action: "list")
        }
        else {
            [actividadInstance: actividadInstance]
        }
    }

    def edit = {
        def actividadInstance = Actividad.get(params.id)
        if (!actividadInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'actividad.label', default: 'Actividad'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [actividadInstance: actividadInstance]
        }
    }

    def update = {
        def actividadInstance = Actividad.get(params.id)
        if (actividadInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (actividadInstance.version > version) {
                    
                    actividadInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'actividad.label', default: 'Actividad')] as Object[], "Another user has updated this Actividad while you were editing")
                    render(view: "edit", model: [actividadInstance: actividadInstance])
                    return
                }
            }
            actividadInstance.properties = params
            if (!actividadInstance.hasErrors() && actividadInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'actividad.label', default: 'Actividad'), actividadInstance.id])}"
                redirect(action: "show", id: actividadInstance.id)
            }
            else {
                render(view: "edit", model: [actividadInstance: actividadInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'actividad.label', default: 'Actividad'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def actividadInstance = Actividad.get(params.id)
        if (actividadInstance) {
            try {
                actividadInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'actividad.label', default: 'Actividad'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'actividad.label', default: 'Actividad'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'actividad.label', default: 'Actividad'), params.id])}"
            redirect(action: "list")
        }
    }
}
