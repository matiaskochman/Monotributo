package monotributo

class AseguradoraService {

    static transactional = true

	def saveObj(Aseguradora obj){
		
		try{
			if(obj.save(flush: true)){
				return obj
			}
			
		}catch(Exception e){
			e.printStackTrace()
		}
		
	}
	
	def showObj(Integer id){
		def instance = Aseguradora.get(id)
		return instance
	}
	
	def deleteObj(Aseguradora obj){
		obj.delete(flush: true)
		
	}
	
	def generateAseguradoras() {
		def a1 = new Aseguradora()
		a1.nombre = "Mapfre"
		a1.cuit_cui = "30666444551"
		
		saveObj(a1)
	}
}
