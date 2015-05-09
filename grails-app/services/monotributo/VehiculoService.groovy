package monotributo

import java.util.List;

class VehiculoService {
	def monotributistaService
	
    static transactional = true

	def saveObj(Vehiculo obj,Integer monotributoId){
		def mono = monotributistaService.showObj(monotributoId)
		
		try{
			if(obj.save(flush: true)){
				mono.listaVehiculos.add(obj)
				monotributistaService.saveObj(mono)

				return obj
			}
		}catch(Exception e){
			e.printStackTrace()
		}
	}
	
	def showObj(Integer id){
		def instance = Vehiculo.get(id)
		return instance
	}
	
	def deleteObj(Vehiculo obj,Integer monotributistaId){
		def mono = monotributistaService.showObj(monotributistaId)
		mono.listaVehiculos.remove(obj)
		monotributistaService.saveObj(mono)
		
		obj.aseguradora = null
		obj.delete(flush: true)
		
	}
	
	public List<Vehiculo> buscarVehiculosDeUnMonotributista(Long idMonotributista){
		
		Monotributista monotributista = monotributistaService.showObj(idMonotributista.intValue())
		
		List<Vehiculo> lista = monotributista.listaVehiculos
		List<Vehiculo> listaNew = new ArrayList<Vehiculo>()

		for (Vehiculo obj : lista) {
			listaNew.add(obj)
		}
		return listaNew
	}

}
