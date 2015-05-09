package monotributo

class FacturaVentaService {

    static transactional = true

	def saveObj(FacturaVenta obj){
		try{
			if(obj.save(flush: true)){
				return obj
			}
			
		}catch(Exception e){
			e.printStackTrace()
		}

	}
	
	def showObj(Integer idObj){
		def dealInstance = FacturaVenta.get(idObj)
		return dealInstance
	}
	
	def deleteObj(FacturaVenta obj){
		obj.delete(flush: true)
		
	}

}
