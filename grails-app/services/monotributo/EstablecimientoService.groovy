package monotributo

import java.util.List;

class EstablecimientoService {
	def monotributistaService
	
    static transactional = true

	def saveObj(Establecimiento obj,Integer monotributistaId){
		def mono = monotributistaService.showObj(monotributistaId)
		try{
			if(obj.save(flush: true)){
				mono.listaEstablecimientos.add(obj)
				monotributistaService.saveObj(mono)
				
				return obj
			}
			
		}catch(Exception e){
			e.printStackTrace()
		}
		
	}
	
	def showObj(Integer id){
		def instance = Establecimiento.get(id)
		return instance
	}
	
	def deleteObj(Establecimiento obj,Integer monotributistaId){
		
		monotributistaService.eliminarEstablecimiento(obj,monotributistaId)
		
		obj.delete(flush: true)
		
	}
	public List<Establecimiento> buscarEstablecimientosDeUnMonotributista(Long idMonotributista){
		
		Monotributista monotributista = monotributistaService.showObj(idMonotributista.intValue())
		
		List<Establecimiento> lista = monotributista.listaEstablecimientos
		List<Establecimiento> listaNew = new ArrayList<Establecimiento>()

		for (Establecimiento obj : lista) {
			listaNew.add(obj)
		}
		return listaNew
	}


}
