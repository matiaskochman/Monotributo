package monotributo

import java.util.List;

class TituloProfesionalService {
	def monotributistaService
    static transactional = true

	def saveObj(TituloProfesional obj,Integer monotributistaId){
		def mono = monotributistaService.showObj(monotributistaId)
		
		try{
			if(obj.save(flush: true)){
				mono.listaTitulosProfesionales.add(obj)
				monotributistaService.saveObj(mono)
				return obj
			}
			
		}catch(Exception e){
			e.printStackTrace()
		}
		
	}
	
	def showObj(Integer id){
		def instance = TituloProfesional.get(id)
		return instance
	}
	
	def deleteObj(TituloProfesional obj,Integer monotributistaId){
		def mono = monotributistaService.showObj(monotributistaId)
		mono.listaTitulosProfesionales.remove(obj)
		monotributistaService.saveObj(mono)
		obj.delete(flush: true)
		
		
	}
	
	public List<TituloProfesional> buscarTituloProfesionalesDeUnMonotributista(Long idMonotributista){
		
		Monotributista monotributista = monotributistaService.showObj(idMonotributista.intValue())
		
		List<TituloProfesional> lista = monotributista.listaTitulosProfesionales
		List<TituloProfesional> listaNew = new ArrayList<TituloProfesional>()

		for (TituloProfesional obj : lista) {
			listaNew.add(obj)
		}
		return listaNew
	}

}
