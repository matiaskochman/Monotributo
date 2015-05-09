package monotributo

class CategoriaService {

    static transactional = true

	def saveObj(Categoria categoria){
		
		try{
			if(categoria.save(flush: true)){
				return categoria
			}
			
		}catch(Exception e){
			e.printStackTrace()
		}
		
	}
	
	def showObj(Integer idCategoria){
		def dealInstance = Categoria.get(idCategoria)
		return dealInstance
	}
	
	def deleteObj(Categoria categoria){
		categoria.delete(flush: true)
		
	}
	
	def generateData(){
		def cat1 = new Categoria("B",24000F,0,30F,3300F,9000F,39F,39F,110F,70F)
		def cat2 = new Categoria("C",36000F,0,45F,5000F,9000F,75F,75F,110F,70F)
		def cat3 = new Categoria("D",48000F,0,60F,6700F,18000F,128F,118F,110F,70F)
		def cat4 = new Categoria("E",72000F,0,85F,10000F,18000F,210F,194F,110F,70F)
		def cat9 = new Categoria("F",96000F,0,110F,13000F,27000F,400F,310F,110F,70F)
		def cat5 = new Categoria("G",120000F,0,150F,16500F,27000F,550F,405F,110F,70F)
		def cat6 = new Categoria("H",144000F,0,200F,20000F,36000F,700F,505F,110F,70F)
		def cat7 = new Categoria("I",200000F,0,200F,20000F,45000F,1600F,1240F,110F,70F)
		def cat8 = new Categoria("J",235000F,1,200F,20000F,45000F,0F,2000F,110F,70F)
		def cat10 = new Categoria("K",270000F,2,200F,20000F,45000F,0F,2350F,110F,70F)
		def cat11 = new Categoria("L",300000F,3,200F,20000F,45000F,0F,2700F,110F,70F)

		
		saveObj(cat1)
		saveObj(cat2)
		saveObj(cat3)
		saveObj(cat4)
		saveObj(cat9)
		saveObj(cat5)
		saveObj(cat6)
		saveObj(cat7)
		saveObj(cat8)
		saveObj(cat10)
		saveObj(cat11)
	}
}
