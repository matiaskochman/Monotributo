package monotributo

class ContratoDeAlquilerService {

    static transactional = true

	def saveObj(ContratoDeAlquiler obj){
		
		try{
			if(obj.save(flush: true)){
				return obj
			}
			
		}catch(Exception e){
			e.printStackTrace()
		}
		
	}
	
	def showObj(Integer id){
		def instance = ContratoDeAlquiler.get(id)
		return instance
	}
	
	def deleteObj(ContratoDeAlquiler obj){
		obj.delete(flush: true)
		
	}
}
