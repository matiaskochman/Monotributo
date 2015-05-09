package monotributo

class ColegioProfesionalService {

    static transactional = true

	def saveObj(ColegioProfesional obj){
		
		try{
			if(obj.save(flush: true)){
				return obj
			}
			
		}catch(Exception e){
			e.printStackTrace()
		}
		
	}
	
	def showObj(Integer id){
		def instance = ColegioProfesional.get(id)
		return instance
	}
	
	def deleteObj(ColegioProfesional obj){
		obj.delete(flush: true)
		
	}
	def generarColegios(){
		def cp1 = new ColegioProfesional()
		cp1.setColegioProfesional "Colegio de Abogados"
		cp1.setCuil_cui "3065655454-3"
		saveObj(cp1)
		
		def cp2 = new ColegioProfesional()
		cp2.setColegioProfesional "Colegio de Contadores"
		cp2.setCuil_cui "3044444444-2"
		saveObj(cp2)
		
		def cp3 = new ColegioProfesional()
		cp3.setColegioProfesional "Colegio de Medicos"
		cp3.setCuil_cui "3077777777-3"
		saveObj(cp3)
		
	}
}
