package monotributo

class DomicilioService {
	def monotributistaService
	
    static transactional = true

	def saveObj(Domicilio obj,Integer monotributistaId){
		def mono = monotributistaService.showObj(monotributistaId)
		
		try{
			if(obj.save(flush: true)){
				mono.listaDomicilios.add(obj)
				monotributistaService.saveObj(mono)
				return obj
			}
			
			
		}catch(Exception e){
			e.printStackTrace()
		}
		
	}
	
	def showObj(Integer id){
		def instance = Domicilio.get(id)
		return instance
	}
	
	def deleteObj(Domicilio obj){
		obj.delete(flush: true)
		
	}
	def deleteObj(Domicilio obj,String monotributistaId){
		
		monotributistaService.eliminarDomicilio(obj,new Integer(monotributistaId))
		
		obj.delete(flush: true)
		
	}
	
	public List<Domicilio> buscarDomiciliosDeUnMonotributista(Long idMonotributista){
		
		Monotributista monotributista = monotributistaService.showObj(idMonotributista.intValue())
		
		List<Domicilio> domicilios = monotributista.listaDomicilios
		List<Domicilio> listaDomicilios = new ArrayList<Domicilio>()

		for (Domicilio domicilio : domicilios) {
			domicilio.getCalle()
			listaDomicilios.add(domicilio)
		}		
		return listaDomicilios
	}

}
