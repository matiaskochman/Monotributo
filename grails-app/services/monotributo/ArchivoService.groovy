package monotributo

class ArchivoService {

    static transactional = true

	def saveObj(Archivo obj){
		
		try{
			if(obj.save(flush: true)){
				return obj
			}
			
		}catch(Exception e){
			e.printStackTrace()
		}
		
	}
	
	def showObj(Integer id){
		def instance = Archivo.get(id)
		return instance
	}
	
	def deleteObj(Archivo obj){
		obj.delete(flush: true)
		
	}
}
