package monotributo

import grails.converters.*

class DomicilioController {
	def domicilioService
	def areaService
	def monotributistaService

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def index = {
		redirect(action: "list", params: params)
	}

	def list = {
		params.max = Math.min(params.max ? params.int('max') : 10, 100)
		[domicilioInstanceList: Domicilio.list(params), domicilioInstanceTotal: Domicilio.count()]
	}

	def list2 = {
		params.max = Math.min(params.max ? params.int('max') : 10, 100)
		[domicilioInstanceList: Domicilio.list(params), domicilioInstanceTotal: Domicilio.count()]
		//render(template:"listaDomicilios", model:[domicilioInstanceList: Domicilio.list(params), domicilioInstanceTotal: Domicilio.count()])
	}

	def listaDomiciliosDeMonotributista = {
		List<Domicilio> lista = new ArrayList()
		if((session["monotributista"] != "null")&&(session["monotributista"] != null)){
			def idMonotributista = session["monotributista"]
			Long idMotributista = new Long(idMonotributista)

			lista = domicilioService.buscarDomiciliosDeUnMonotributista(idMotributista)
		}

		render(template:"/domicilio/listaDomicilios", model:[domicilioInstanceList: lista, domicilioInstanceTotal: lista.size()])
	}

	def create = {
		def domicilioInstance = new Domicilio()
		domicilioInstance.properties = params
		return [domicilioInstance: domicilioInstance]
	}

	def create2 = {
		def domicilioInstance = new Domicilio()
		domicilioInstance.properties = params
		return [domicilioInstance: domicilioInstance]
	}

	def save = {
		Area provincia = areaService.showObj(new Integer(params.provincia))
		Area partido = areaService.showObj(new Integer(params.partido))
		Area localidad = areaService.showObj(new Integer(params.localidad))

		def domicilioInstance = new Domicilio()

		domicilioInstance.calle = params.calle
		domicilioInstance.codigoPostal = params.codigoPostal
		domicilioInstance.deptoLocalOficina = params.deptoLocalOficina
		domicilioInstance.numero = params.numero
		domicilioInstance.manzana = params.manzana
		domicilioInstance.piso = params.piso
		domicilioInstance.sector = params.sector
		domicilioInstance.tipoDeDomicilio = params.tipoDeDomicilio
		domicilioInstance.torre = params.torre
		domicilioInstance.provincia = provincia
		domicilioInstance.partido= partido
		domicilioInstance.localidad = localidad

		guardar(domicilioInstance)
	}

	def save2 = {
		if((session["monotributista"] == "null")||(session["monotributista"] == null)){
			def domicilioInstance = new Domicilio()
			flash.message = "primero tiene que crear un monotributista"
			render(template:"/domicilio/createDomicilioForm", model:[domicilioInstance: domicilioInstance])
		}else{
			def domicilioInstance = new Domicilio()

			if((params['provincia']=="null")||(params['partido']=="null")||(params['localidad']=="null")){
				domicilioInstance.properties = params
				domicilioInstance.partido = new Area()
				domicilioInstance.provincia = new Area()
				domicilioInstance.localidad = new Area()

				flash.message = "Provincia, Partido y Localidad no pueden estar vacias "
				render(view: "create2", model: [domicilioInstance: domicilioInstance])
			}else{
				Area provincia = areaService.showObj(new Integer(params.provincia))
				Area partido = areaService.showObj(new Integer(params.partido))
				Area localidad = areaService.showObj(new Integer(params.localidad))

				domicilioInstance.calle = params.calle
				domicilioInstance.codigoPostal = params.codigoPostal
				domicilioInstance.deptoLocalOficina = params.deptoLocalOficina
				domicilioInstance.numero = params.numero
				domicilioInstance.manzana = params.manzana
				domicilioInstance.piso = params.piso
				domicilioInstance.sector = params.sector
				domicilioInstance.tipoDeDomicilio = params.tipoDeDomicilio
				domicilioInstance.torre = params.torre
				domicilioInstance.provincia = provincia
				domicilioInstance.partido= partido
				domicilioInstance.localidad = localidad


				guardar2(domicilioInstance)
			}
		}
	}

	def show = {
		//def domicilioInstance = Domicilio.get(params.id)
		def domicilioInstance = domicilioService.showObj(new Integer(params.id))
		if (!domicilioInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'domicilio.label', default: 'Domicilio'), params.id])}"
			redirect(action: "list")
		}
		else {
			[domicilioInstance: domicilioInstance]
		}
	}

	def show2 = {
		//def domicilioInstance = Domicilio.get(params.id)
		def domicilioInstance = domicilioService.showObj(new Integer(params.id))
		if (!domicilioInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'domicilio.label', default: 'Domicilio'), params.id])}"
			redirect(action: "list2")
		}
		else {
			[domicilioInstance: domicilioInstance]
		}
	}

	def edit = {
		//def domicilioInstance = Domicilio.get(params.id)
		def domicilioInstance = domicilioService.showObj(new Integer(params.id))
		if (!domicilioInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'domicilio.label', default: 'Domicilio'), params.id])}"
			redirect(action: "list")
		}
		else {
			return [domicilioInstance: domicilioInstance]
		}
	}

	def edit2 = {
		//def domicilioInstance = Domicilio.get(params.id)
		def domicilioInstance = domicilioService.showObj(new Integer(params.id))
		if (!domicilioInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'domicilio.label', default: 'Domicilio'), params.id])}"
			redirect(action: "list2")
		}
		else {
			return [domicilioInstance: domicilioInstance]
		}
	}

	def update = {
		def domicilioInstance = domicilioService.showObj(new Integer(params.id))
		if (domicilioInstance) {
			if (params.version) {
				def version = params.version.toLong()
				if (domicilioInstance.version > version) {

					domicilioInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [
						message(code: 'domicilio.label', default: 'Domicilio')]
					as Object[], "Another user has updated this Domicilio while you were editing")
					render(view: "edit", model: [domicilioInstance: domicilioInstance])
					return
				}
			}
			domicilioInstance.properties = params
			if (!domicilioInstance.hasErrors() && domicilioInstance.save(flush: true)) {
				flash.message = "${message(code: 'default.updated.message', args: [message(code: 'domicilio.label', default: 'Domicilio'), domicilioInstance.id])}"
				redirect(action: "show", id: domicilioInstance.id)
			}
			else {
				render(view: "edit", model: [domicilioInstance: domicilioInstance])
			}
		}
		else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'domicilio.label', default: 'Domicilio'), params.id])}"
			redirect(action: "list")
		}
	}

	def update2 = {
		def domicilioInstance = domicilioService.showObj(new Integer(params.id))
		Area provincia = areaService.showObj(new Integer(params.provincia))
		Area partido = areaService.showObj(new Integer(params.partido))
		Area localidad = areaService.showObj(new Integer(params.localidad))

		if (domicilioInstance) {
			//domicilioInstance.properties = params
			domicilioInstance.provincia = provincia
			domicilioInstance.partido = partido
			domicilioInstance.localidad = localidad

			domicilioInstance.calle = params.calle
			domicilioInstance.codigoPostal = params.codigoPostal
			domicilioInstance.deptoLocalOficina = params.deptoLocalOficina
			domicilioInstance.numero = params.numero
			domicilioInstance.manzana = params.manzana
			domicilioInstance.piso = params.piso
			domicilioInstance.sector = params.sector
			domicilioInstance.tipoDeDomicilio = params.tipoDeDomicilio
			domicilioInstance.torre = params.torre


			if (params.version) {
				def version = params.version.toLong()
				if (domicilioInstance.version > version) {

					domicilioInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [
						message(code: 'domicilio.label', default: 'Domicilio')]
					as Object[], "Another user has updated this Domicilio while you were editing")
					//render(view: "edit", model: [domicilioInstance: domicilioInstance])
					render(template:"/domicilio/editDomicilioForm", model: [domicilioInstance: domicilioInstance])
					return
				}
			}
			if (!domicilioInstance.hasErrors() && domicilioService.saveObj(domicilioInstance)) {
				flash.message = "${message(code: 'default.updated.message', args: [message(code: 'domicilio.label', default: 'Domicilio'), domicilioInstance.id])}"
				redirect(action: "show2", id: domicilioInstance.id)
			}
			else {
				render(view: "edit2", model: [domicilioInstance: domicilioInstance])
			}
		}
		else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'domicilio.label', default: 'Domicilio'), params.id])}"
			redirect(action: "list2")
		}
	}

	def delete = {
		def domicilioInstance = domicilioService.showObj(new Integer(params.id))

		if (domicilioInstance) {
			try {
				domicilioInstance.delete(flush: true)
				flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'domicilio.label', default: 'Domicilio'), params.id])}"
				redirect(action: "list")
			}
			catch (org.springframework.dao.DataIntegrityViolationException e) {
				flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'domicilio.label', default: 'Domicilio'), params.id])}"
				redirect(action: "show", id: params.id)
			}
		}
		else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'domicilio.label', default: 'Domicilio'), params.id])}"
			redirect(action: "list")
		}
	}

	def delete2 = {
		def domicilioInstance = domicilioService.showObj(new Integer(params.id))

		if (domicilioInstance) {
			try {
				domicilioService.deleteObj(domicilioInstance,session["monotributista"])
				flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'domicilio.label', default: 'Domicilio'), params.id])}"
				redirect(action: "list2")
			}
			catch (org.springframework.dao.DataIntegrityViolationException e) {
				flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'domicilio.label', default: 'Domicilio'), params.id])}"
				redirect(action: "show2", id: params.id)
			}
		}
		else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'domicilio.label', default: 'Domicilio'), params.id])}"
			redirect(action: "list2")
		}
	}

	public guardar(Domicilio instance) {
		domicilioService.saveObj(instance)
		if (!instance.hasErrors() && instance != null) {
			flash.message = "${message(code: 'default.created.message', args: [message(code: 'area.label', default: 'Area'), instance.id])}"
			redirect(action: "show", id: instance.id)
		}
		else {
			render(view: "create", model: [domicilioInstance: instance])
		}
	}
	public guardar2(Domicilio instance) {
		domicilioService.saveObj(instance,session["monotributista"].intValue())
		if (!instance.hasErrors() && instance.id != null) {
			//monotributistaService.saveObj(mono)
			flash.message = "Domicilio con id ${instance.id} guardado con exito"
			redirect(action:"list2")
		}
		else {
			render(view: "create2", model: [domicilioInstance: instance])

		}
	}

	public List listarProvincias(){
		return areaService.buscarProvincias()
	}

	def listarPartidos = {
		def idProvincia = params['idProvincia']
		if(idProvincia == null){
			return
		}
		List listaPartidos = areaService.buscarPartido(new Long(idProvincia))

		render listaPartidos as grails.converters.JSON //habria que tener todo el tiempo idprovincia, idpartido, idlocalidad y no se como

	}

	def listarLocalidades = {
		def idPart = params['idPartido']
		if(idPart == null){
			return
		}
		Long idPartido = new Long(idPart)
		//idPartido--; //porque es el id que le esta dando el combo y agregue una opcion en blanco a mano y entonces hay q reducir en 1 el id
		List listaLocalidades = areaService.buscarLocalidad(idPartido)
		render listaLocalidades as grails.converters.JSON
		//return [model:[partidos:listaPartidos]]
	}

}
