package monotributo

import constants.AreaTypeConstants;

class AreaService {

    static transactional = true

	def saveObj(Area obj){
		
		try{
			if(obj.save(flush: true)){
				return obj
			}
			
		}catch(Exception e){
			e.printStackTrace()
		}
		
	}
	
	def showObj(Integer id){
		def instance = Area.get(id)
		return instance
	}
	
	def deleteObj(Area obj){
		obj.delete(flush: true)
		
	}
	
	def buscarProvincias(){
		def lista = Area.findAllByTipo(AreaTypeConstants.PROVINCIA)
		return lista
	}
	
	def buscarPartido(Long idProvincia){
		def lista = Area.executeQuery("select a from Area a where a.tipo='PARTIDO' and a.areaPadre.id=:desc",[desc:idProvincia])
	}
	
	def buscarLocalidad(Long idPartido){
		def lista = Area.executeQuery("select a from Area a where a.tipo='LOCALIDAD' and a.areaPadre.id=:desc",[desc:idPartido])
	}
	
	def generarAreas() {
		def area1 = new Area()
		area1.setDescripcion("Argentina")
		area1.setTipo(AreaTypeConstants.PAIS)
		
		saveObj(area1)
		
		def area2 = new Area()
		area2.setDescripcion("Buenos Aires")
		area2.setAreaPadre(area1)
		area2.setTipo(AreaTypeConstants.PROVINCIA)
		
		saveObj(area2)
		
		def area3 = new Area()
		area3.setDescripcion("Santa Fe")
		area3.setAreaPadre(area1)
		area3.setTipo(AreaTypeConstants.PROVINCIA)
		
		saveObj(area3)
		
		def area4 = new Area()
		area4.setDescripcion("Cordoba")
		area4.setAreaPadre(area1)
		area4.setTipo(AreaTypeConstants.PROVINCIA)
		
		saveObj(area4)
		
		def area5 = new Area()
		area5.setDescripcion("Partido de Lanus")
		area5.setAreaPadre(area2)
		area5.setTipo(AreaTypeConstants.PARTIDO)
		
		saveObj(area5)
		
		def area6 = new Area()
		area6.setDescripcion("Localidad de Lanus")
		area6.setAreaPadre(area5)
		area6.setTipo(AreaTypeConstants.LOCALIDAD)
		
		saveObj(area6)
		
	}

}
