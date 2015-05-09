package monotributo

import java.util.List;

class GrupoFamiliarService {
	def monotributistaService
	def archivoService
    static transactional = true

	def saveObj(GrupoFamiliar obj,Monotributista obj2,Archivo obj3){
		
		try{
			
			archivoService.saveObj(obj3)
			if(obj.save(flush: true)){
				monotributistaService.saveObj(obj2)
				return obj
			}
			
		}catch(Exception e){
			e.printStackTrace()
		}
		
	}
	
	def updateObj(GrupoFamiliar obj){
		
		try{
			
			if(obj.save(flush: true)){
				return obj
			}
			
		}catch(Exception e){
			e.printStackTrace()
		}
		
	}

	def showObj(Integer id){
		def instance = GrupoFamiliar.get(id)
		return instance
	}
	
	def deleteObj(GrupoFamiliar obj){
		obj.delete(flush: true)
		
	}
	def deleteObj(GrupoFamiliar obj,String monotributistaId){
		
		if(monotributistaId=="null"){
			return
		}
		monotributistaService.eliminarGrupoFamiliar(obj,new Integer(monotributistaId))
		
		obj.delete(flush: true)
		
	}
	public List<GrupoFamiliar> buscarGruposFamiliaresDeUnMonotributista(Long idMonotributista){
		
		Monotributista monotributista = monotributistaService.showObj(idMonotributista.intValue())
		
		List<GrupoFamiliar> lista = monotributista.listaGrupoFamiliar
		List<GrupoFamiliar> listaNew = new ArrayList<GrupoFamiliar>()

		for (GrupoFamiliar obj : lista) {
			listaNew.add(obj)
		}
		return listaNew
	}


}
